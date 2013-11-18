# -*- coding: UTF-8 -*-

class UserLog < ActiveRecord::Base
  belongs_to :user
end
