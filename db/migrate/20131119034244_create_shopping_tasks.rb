# -*- coding: UTF-8 -*-

class CreateShoppingTasks < ActiveRecord::Migration
  def change
    create_table :shopping_tasks do |t|
      t.integer :price        # 任务价格
      t.string :url           # 任务商品的地址
      t.integer :deploy_type  # 发布类型
      t.integer :score        # 动态评分
      t.string :remind        # 提醒语

      t.timestamps
    end
  end
end
