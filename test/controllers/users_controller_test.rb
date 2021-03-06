# -*- coding: UTF-8 -*-

require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:sheldonchen)

    @input_attributes = {
        :name                   => "sheldon",
        :password               => "private",
        :password_confirmation  => "private"
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create,
            :user => @input_attributes,
            :realname => "Sheldon Chen",
            :sex => 1,
            :qq => "123456",
            :email => "test@test.com",
            :telphone => "123456",
            :recommend_man  => ""
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, :user => @input_attributes
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
