# -*- coding: UTF-8 -*-

class AddUserInfoCompleteInformation < ActiveRecord::Migration
  def change
    add_column :user_infos, :address, :string             # 所在地
    add_column :user_infos, :detail_address, :string      # 详细地址
    add_column :user_infos, :logo, :string                # 头像
    add_column :user_infos, :send_province, :string       # 签收快递发货省份
    add_column :user_infos, :receipt_province, :string    # 签收快递收货省份
  end
end
