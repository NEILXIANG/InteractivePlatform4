# -*- coding: UTF-8 -*-

class AdminController < ApplicationController
  def index
    set_user_information
  end

  def center
    # 用户中心
    set_user_information
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
