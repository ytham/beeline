class Restaurant < ActiveRecord::Base
  attr_accessible :description, :image, :location, :name, :rating
end
