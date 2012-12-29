ActionController::Routing::Routes.draw do |map|
  map.resources :json_time, :controller => 'restfull_timelogs'
end