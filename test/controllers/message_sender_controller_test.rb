# -*- coding: UTF-8 -*-
require 'test_helper'

require 'net/http'

class MessageSenderControllerTest < ActionController::TestCase
  test "should get send" do
    uri = URI("http://service.winic.org/sys_port/gateway/vipsms.asp")
    params = { :id => "159970091", :pwd => "x101232", :to => "18922739426", :content => "hello, world", :encode => 71, :time => ""}
    uri.query = URI.encode_www_form(params)
    resp = Net::HTTP.get_response(uri)
    assert_not_nil resp
  end

end
