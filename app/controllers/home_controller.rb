class HomeController < ApplicationController
  def index
    @most_popular = Beer.order("created_at DESC").limit(5)
  end

end
