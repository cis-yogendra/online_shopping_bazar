class Product < ActiveRecord::Base
  attr_accessible :product_name, :price, :image, :description, :image_file_name, :image_content_type, :image_file_size, :image_updated_at
  has_attached_file :image,
                    :styles => {:medium => "300x300>", :thumb => "100x100>"},
                    :url => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  belongs_to :category
end
