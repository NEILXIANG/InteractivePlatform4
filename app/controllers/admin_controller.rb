class AdminController < ApplicationController
  def index
    if logger.debug?
        logger.debug("user id= " + session[:user_id].to_s)
    end

    if session[:user_id] != nil
        @user = User.find(session[:user_id])
        @user_log_count = UserLog.where(user_id: session[:user_id]) .count
    end
  end
end
