class Users::SessionsController < Devise::SessionsController
  # To change this template use File | Settings | File Templates.
  
  devise_for :users, :controllers => { :sessions => "users/sessions" }

end