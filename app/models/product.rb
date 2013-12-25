class Product < ActiveRecord::Base
  attr_accessible :product_name, :price, :description, :image_updated_at, :pictures_attributes, :category_id
  has_many :pictures, :as => :resource, :dependent => :destroy
  belongs_to :category
  accepts_nested_attributes_for :pictures, :allow_destroy => true
end
