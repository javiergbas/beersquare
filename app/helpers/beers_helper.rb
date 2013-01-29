module BeersHelper
  
  def current_user_likes_beer(beer)
    current_user.likes_beers.exists?(beer.id) if user_signed_in?
  end
  
  def current_user_checks_beer(beer)
    current_user.checks_beers.exists?(beer.id) if user_signed_in?
  end
  
end
