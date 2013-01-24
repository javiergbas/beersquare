class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :beer

  attr_accessible :beer_id, :like_id
end
