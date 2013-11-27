class AddUserCode < ActiveRecord::Migration
  def change
    add_column  :users, :code, :string
  end
end
