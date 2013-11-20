# -*- coding: UTF-8 -*-

require 'digest/sha2'

class User < ActiveRecord::Base
  has_one :user_info
  has_many :user_logs
  has_many :posts

  validates :name, :presence => true, :uniqueness => true
  validates :password, :confirmation => true

  attr_accessor :password_confimation
  attr_reader   :password

  validate  :password_must_be_present

  def User.authenticate(name, password)
    if user = find_by_name(name)
      if user.hashed_password == encrypt_password(password, user.salt)
        user
      end
    end
  end

  def User.encrypt_password(password, salt)
    Digest::SHA2.hexdigest(password + "InteractivePlatform4" + salt)
  end

  def password=(password)
    @password = password

    if password.present?
      generate_salt
      self.hashed_password = self.class.encrypt_password(password, salt)
      if logger.debug?
        logger.debug("hashed_password=" + hashed_password)
      end
    end
  end

  private

  def password_must_be_present
    errors.add(:password, "缺少密码") unless hashed_password.present?
  end

  def generate_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
end
