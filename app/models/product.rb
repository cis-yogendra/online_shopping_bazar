class Product < ActiveRecord::Base
  attr_accessible :product_name, :price, :description, :image_updated_at, :pictures_attributes, :category_id
  has_many :pictures, :as => :resource, :dependent => :destroy
  belongs_to :category
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  # define_index do
  # 	indexes :product_name
  # end
  def self.search(search)
    if search
      find(:all, :conditions => ['product_name LIKE ? ', "%#{search}%"])
    else
      find(:all)
    end
  end
end
