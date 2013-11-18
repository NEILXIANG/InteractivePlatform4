# -*- coding: UTF-8 -*-

class CreateUserLogs < ActiveRecord::Migration
  def change
    create_table :user_logs do |t|
      t.integer :user_id        # 外键
      t.string :ip              # 登录的ip地址
      t.string :address         # 登录地点

      t.timestamps
    end
  end
end
