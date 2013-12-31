class AddColumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :name, :string
    add_column :events, :event_type, :string
    add_column :events, :date, :datetime
    add_column :events, :description, :string
    add_column :events, :address, :string
    add_column :events, :address_latitude, :string
    add_column :events, :address_longitude, :string
    add_column :events, :address_locality, :string
    add_column :events, :address_country, :string
  end
end
