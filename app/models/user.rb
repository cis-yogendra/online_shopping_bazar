class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :address, :address_latitude, :address_longitude, :address_locality, :address_country, :pictures_attributes
  has_many :pictures, :as => :resource, :dependent => :destroy
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  # attr_accessible :title, :body
end
