class HomeController < ApplicationController
  def index
    @recent = Beer.order("created_at DESC").limit(5)
  end

end
