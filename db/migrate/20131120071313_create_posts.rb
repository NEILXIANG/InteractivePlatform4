# -*- coding: UTF-8 -*-

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title       # 标题
      t.string :content     # 内容
      t.integer :user_id    # 作者id（外键）

      t.timestamps
    end
  end
end
