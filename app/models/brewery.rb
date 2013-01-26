class Brewery < ActiveRecord::Base
  has_many :beers, :dependent => :destroy

  attr_accessible :name, :country, :title, :latitude, :longitude

  #Images
  has_attached_file :photo, :styles => { :small => "150x150>" },
                    :url  => "/assets/breweries/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/breweries/:id/:style/:basename.:extension"

#  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

end
