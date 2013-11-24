# -*- coding: UTF-8 -*-

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # 属性不能为空
  test "attributes must be no null" do
    post = Post.new
    assert !post.valid?
  end

  # 标题必须是唯一
  test "unique title" do
    post = Post.new(
        :title      => posts(:one).title,
        :content    => 'content',
        :user_id    => 1
      )
    assert !post.save
  end
end
