class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_one :user
  
  # User likes beers
  has_and_belongs_to_many :users

  #Images
  has_attached_file :photo, :styles => { :small => "150x150>" },
                    :url  => "/assets/beers/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/beers/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

  def total_likes
    self.users.count
  end

end
