class Beer < ActiveRecord::Base
  belongs_to :brewery
  
  # User likes beers
  has_and_belongs_to_many :users
  
end
