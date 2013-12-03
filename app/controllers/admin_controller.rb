# -*- coding: UTF-8 -*-

class AdminController < ApplicationController
  def index
    set_user_information
  end

  def center
    # 用户中心
    set_user_information
  end
  
  def password
    # 密码管理
    @page_name = '密码管理'
    if logger.debug?
      logger.debug('code=%s' % [params[:code]])
      logger.debug('password=%s' % [params[:password]])
      logger.debug('password_confirmation=%s' % [params[:password_confirmation]])
    end
    
    code = params[:code]
    password = params[:password]
    password_confirmation = params[:password_confirmation]
    
    if code.blank? || password.blank? || password_confirmation.blank?
      # TODO 返回给用户不能为空的提示
      return
    end
    
    if password != password_confirmation
      # TODO 返回用户两个密码不同的提示
      return
    end
    
    user = User.find(session[:user_id])
    
    if user.code != code
      # TODO 返回用户安全交易码不正确的提示
      return
    end
    
    user.password = password
    user.save
    
    redirect_to welcome_path
  end

  private

  def set_user_information
    # 查询用户信息
    if logger.debug?
        logger.debug("user id= " + session[:user_id].to_s)
    end

    if session[:user_id] != nil
        @user = User.find(session[:user_id])
        @user_log_count = UserLog.where(user_id: session[:user_id]).count
        @user_log = UserLog.where(user_id: session[:user_id]).order(id: :desc).first!
    end
  end
end
