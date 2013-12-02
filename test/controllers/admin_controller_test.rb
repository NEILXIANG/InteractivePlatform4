# -*- coding: UTF-8 -*-

require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get index" do
    # 到管理首页
    get :index
    assert_response :success
  end
  
  test "should get center" do
    # 到用户中心
    get :center
    assert_response :success
  end
  
  test "should get password page" do
    # 到修改密码页
    get :password
    assert_response :success
  end
  
  test "should update password" do
    # TODO 修改密码
    assert true
  end

end
