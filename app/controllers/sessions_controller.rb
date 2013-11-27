# -*- coding: UTF-8 -*-

class SessionsController < ApplicationController
  def new
  end

  def create
    # 登录接口
    if user = User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id

      @remote_ip = request.env["HTTP_X_FORWARDED_FOR"]

      if @remote_ip.present?
        @remote_ip = request.remote_ip
      end

      user_log = UserLog.new(
          :user_id => user.id,
          :ip => @remote_ip,
          :address => ""
      )

      if logger.debug?
        logger.debug("ip=" + user_log.ip.to_s)
      end

      user_log.save()

      redirect_to admin_url
    else
      redirect_to welcome_path, :alert => "用户名或密码不正确"
    end
  end

  def destroy
    session[:user_id] = nil
    # redirect_to welcome_path#, :status => 200, :notice => "已退出"
    # render 'welcome/index'
  end
end
