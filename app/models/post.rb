# -*- coding: UTF-8 -*-

class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, :content, :user_id, :presence => true   # 标题，内容，作者id不能为空
  validates :title, :uniqueness => true                     # 标题必须唯一
end
