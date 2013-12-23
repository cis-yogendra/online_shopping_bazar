class Product < ActiveRecord::Base
  attr_accessible :product_name, :price, :image, :description
  # belogs_to :category
  has_attached_file :image,
                    :styles => {:medium => "300x300>", :thumb => "100x100>"},
                    :url => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
end
