require 'geokit'
include Geokit::Geocoders

class Venue < ActiveRecord::Base
  
  acts_as_mappable
  
  before_save :geocode_address
  
  has_attached_file :image, :storage => :s3, 
                            :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                            :path => ':attachment/:id/:style/:basename.:extension',
                            :styles => { :thumb => "75x75" }
                            
  # Geocode-able address string.
  def address_string
    "#{self.address_1} #{self.address_2}, #{self.address_city}, #{self.address_state} #{self.address_zipcode}"
  end
                            
  # Take the address we just created and give it a LAT and LNG value in the DB.
  def geocode_address
    geo=Geokit::Geocoders::MultiGeocoder.geocode(self.address_string)
    errors.add(:address, "Could not Geocode address") if !geo.success
    self.lat, self.lng = geo.lat,geo.lng if geo.success
  end
end
