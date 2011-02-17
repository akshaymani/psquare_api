require 'geokit'
include Geokit::Geocoders

class Venue < ActiveRecord::Base
  
  acts_as_mappable
  
  before_save :geocode_address
  
  has_attached_file :image, :storage => :s3, 
                            :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                            :path => ':attachment/:id/:style/:basename.:extension'
end
