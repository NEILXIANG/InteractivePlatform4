# -*- coding: UTF-8 -*-

class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, :content, :user_id, :presence => true
  validates :title, :uniqueness => true
end
