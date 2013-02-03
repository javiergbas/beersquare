class Brewery < ActiveRecord::Base
  extend Geocoder::Model::ActiveRecord
  has_many :beers, :dependent => :destroy

  attr_accessible :name, :country, :latitude, :longitude, :state, :city, :address, :zip_code, :photo

  #Maps
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    self.address+' '+self.city+' '+self.zip_code+' '+self.state
  end

  #Images
  has_attached_file :photo, :styles => { :medium => "940x240", :small => "150x150>" },
                    :url  => "/assets/breweries/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/breweries/:id/:style/:basename.:extension"

  #validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

end
