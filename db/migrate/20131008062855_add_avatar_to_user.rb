class AddAvatarToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :users, :company, :string
    add_column :users, :time_zone, :string
    add_column :users, :username, :string
  end
end
