class UserMailer < ActionMailer::Base
  default from: "hello@birrali.st"
  
  def welcome_email(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
  
  def new_beer
    mail(:to => "jgbas67@gmail.com", :subject => "New beer on board!")
  end
  
end
