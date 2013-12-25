class Picture < ActiveRecord::Base
  attr_accessible :image, :image_file_name, :image_file_type, :image_content_type, :image_file_size, :resource_type, :resource_id
  has_attached_file :image,
                    :styles => {:medium => "300x300>", :thumb => "100x100>"},
                    :url => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  belongs_to :resource, :polymorphic => true
end
