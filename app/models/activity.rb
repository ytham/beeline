class Activity < ActiveRecord::Base
  attr_accessible :description, :image, :location, :name, :price, :time, :activity_type

  belongs_to :user
end
