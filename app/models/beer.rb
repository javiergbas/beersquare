class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_one :user
  
  # User likes beers
  has_many :likes
  has_many :checks
  has_many :likes_users, :through => :likes, :source => :user
  has_many :checks_users, :through => :checks, :source => :user
  #has_and_belongs_to_many :users


  #Images
  has_attached_file :photo, :styles => { :small => "150x150>", :medium => "300x300>" },
                    :url  => "/assets/beers/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/beers/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

  def total_likes
    self.likes_users.count
  end
  
  def total_checks
    self.checks_users.count
  end

end
