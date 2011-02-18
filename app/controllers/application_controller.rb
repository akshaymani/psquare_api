# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
include Geokit::Geocoders

class ApplicationController < ActionController::Base
  include Clearance::Authentication
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  before_filter :get_user_location
  
  private
  
  def get_user_location
    if session[:user_loc].blank?
      if Rails.env == "development" || Rails.env == "test"
        loc = Geokit::Geocoders::MultiGeocoder.geocode("69.114.55.201")
      else
        loc = Geokit::Geocoders::MultiGeocoder.geocode(request.remote_ip)
      end
      session[:user_loc] = {:lat => loc.lat, :lng => loc.lng, :state => loc.state }
    else
      return
    end
  end
end
