class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id
  validates :name, :presence => true
  # validates_uniqueness_of :name, :message => "%{value} has been taken"
  has_many :products, :dependent => :destroy
  has_many :sub_categories, :dependent => :destroy, :class_name => "Category", :foreign_key => :parent_id
  belongs_to :parent, :class_name => "Category"
end
