class Checkin < ActiveRecord::Base
  belongs_to :venue
  belongs_to :user
  
  has_attached_file :image, :storage => :s3, 
                            :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                            :path => ':attachment/:id/:style/:basename.:extension',
                            :styles => { :thumb => "75x75" }
end
