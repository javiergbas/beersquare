class ProfileController < ApplicationController
  
  before_filter :authenticate_user!
  
  def show
    @beers = current_user.beers
  end
  
end
