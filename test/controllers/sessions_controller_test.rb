# -*- coding: UTF-8 -*-

require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  # TODO : 登录和退出的测试

  #test "should login" do
  #  sheldon = users(:one)
  #  post :create, :name => 'sheldon', :password => 'private'
  #  assert_redirected_to admin_url
  #  assert_equal sheldon.id, session[:user_id]
  #end
  #
  #test "should logout" do
  #  delete :destroy
  #  assert_redirected_to login_url
  #end

end
