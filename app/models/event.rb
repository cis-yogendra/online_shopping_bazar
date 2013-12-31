class Event < ActiveRecord::Base
  attr_accessible :name, :event_type, :date, :description, :address, :address_latitude, :address_longitude, :address_locality, :address_country
end
