# -*- coding: UTF-8 -*-

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "invalid with empty attributes" do
    user = User.new
    assert !user.valid?
  end

  test "unique name" do
    sheldonchen = User.new(
            :name       => users(:sheldonchen).name,
            :password   => 'secret'
        )
    assert !sheldonchen.save
  end
end
