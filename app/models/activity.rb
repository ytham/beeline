class Activity < ActiveRecord::Base
  attr_accessible :description, :image, :location, :name, :price, :time, :activity_type, :distance

  has_many :users
  has_many :carts
end
