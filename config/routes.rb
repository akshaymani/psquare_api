ActionController::Routing::Routes.draw do |map|
  # CLEARANCE ROUTES
  map.resource  :session, :controller => 'sessions', :only => [:new, :create, :destroy]
  map.sign_in '/sign_in', :controller => 'sessions', :action => 'new'
  map.sign_out '/sign_out', :controller => 'sessions', :action => 'destroy'
  
  map.resources :venues do |venues|
    venues.resources :tips
  end

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
