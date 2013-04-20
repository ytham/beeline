class Cart < ActiveRecord::Base
  attr_accessible :activity_id, :user_id

  belongs_to :user
  belongs_to :activity

  validates :user_id, presence: true
  validates :activity_id, presence: true
end
