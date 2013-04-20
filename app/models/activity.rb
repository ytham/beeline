class Activity < ActiveRecord::Base
  attr_accessible :description, :image, :location, :name, :price, :time, :type

  belongs_to :user
end
