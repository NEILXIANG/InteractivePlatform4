# -*- coding: UTF-8 -*-

require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  # 测试用户的登录成功情况
  test 'should login' do
    sheldon = User.new(
      :name => 'SheldonChen',
      :password => '123456',
      :password_confirmation => '123456'
    )
    sheldon.save

    post :create, :name => sheldon.name, :password => sheldon.password
    assert_redirected_to admin_url
    assert_equal sheldon.id, session[:user_id]
  end

  # 测试用户的登录失败的情况
  test "should not login" do
   sheldon = users(:sheldonchen)
   post :create, :name => 'sheldonchen', :password => 'private'
   assert_redirected_to login_url
   assert_equal nil, session[:user_id]
  end

  # 测试用户退出的情况
  test "should logout" do
   delete :destroy
   assert_redirected_to login_url
  end

end
