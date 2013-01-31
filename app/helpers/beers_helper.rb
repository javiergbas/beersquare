module BeersHelper
  
  def total_beers
    Beer.count
  end
  
  def beer_country(beer)
    if !beer.country.blank?
      beer.country.downcase
    elsif beer.brewery && !beer.brewery.country.blank?
      beer.brewery.country.downcase
    end
  end
  
  def current_user_likes_beer(beer)
    current_user.likes_beers.exists?(beer.id) if user_signed_in?
  end
  
  def current_user_checks_beer(beer)
    current_user.checks_beers.exists?(beer.id) if user_signed_in?
  end
  
  def current_user_total_countries
    current_user.checks_beers.select(:country).uniq(&:country).count
  end
  
end
