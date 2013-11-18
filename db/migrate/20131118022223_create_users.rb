# -*- coding: UTF-8 -*-

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name                # 会员名
      t.string :hashed_password     # 散列密码
      t.string :salt                # 混淆码

      t.timestamps
    end
  end
end
