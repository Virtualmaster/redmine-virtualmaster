ActionController::Routing::Routes.draw do |map|
  map.resources :json_time, :controller => 'restfull'
  #map.connect '/restfull', :controller => 'restfull', :action => 'index'
end