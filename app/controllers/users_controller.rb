# -*- coding: UTF-8 -*-

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.order(:name)
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if logger.debug?
      logger.debug("realname=" + params[:realname])
      logger.debug("sex=" + params[:sex])
      logger.debug("qq=" + params[:qq])
      logger.debug("email=" + params[:email])
      logger.debug("telphone=" + params[:telphone])
      logger.debug("recommend_man=" + params[:recommend_man])
    end

    respond_to do |format|
      if @user.save
        @userinfo = UserInfo.new(
            :real_name      => params[:realname],
            :sex            => params[:sex],
            :qq             => params[:qq],
            :email          => params[:email],
            :telphone       => params[:telphone],
            :recommend_man  => params[:recommend_man],
            :user_id        => @user.id
        )

        if @userinfo.save
          format.html { redirect_to @user, notice: "用户 #{@user.name} 注册成功." }
          format.json { render action: 'show', status: :created, location: @user }
        end

      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "用户 #{@user.name} 更新成功." }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation,
        :realname, :sex, :qq, :email, :telphone)
    end
end
