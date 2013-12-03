# -*- coding: UTF-8 -*-

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :check_user

  private

  def check_user
    if session[:user_id] != nil
      @user = User.find_by_id(session[:user_id])

      @is_login = true
    else
      @user = User.new
      @user.id = 0
      @user.name = '匿名'

      @is_login = false
    end
  end
end
