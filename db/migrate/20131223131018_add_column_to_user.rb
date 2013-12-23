class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :image, :string
    add_column :users, :address, :string
    add_column :users, :address_latitude, :string
    add_column :users, :address_longitude, :string
    add_column :users, :address_locality, :string
    add_column :users, :address_country, :string
  end
end
