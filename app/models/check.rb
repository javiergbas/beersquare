class Check < ActiveRecord::Base
  belongs_to :user
  belongs_to :beer

  attr_accessible :beer_id, :user_id
end
