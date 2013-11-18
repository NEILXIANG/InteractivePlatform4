# -*- coding: UTF-8 -*-

class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :real_name         # 真实姓名
      t.integer :sex              # 性别  0: 男，1：女
      t.string :qq                # QQ号码
      t.string :email             # 电子邮箱
      t.string :telphone          # 手机号码
      t.string :recommend_man     # 推荐人
      t.integer :user_id          # 外键

      t.timestamps
    end
  end
end
