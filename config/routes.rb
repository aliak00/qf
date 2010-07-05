ActionController::Routing::Routes.draw do |map|
  map.resources :concepts
  
  map.resources :entities

  map.resources :roles

  map.resources :user_sessions

  map.resources :users
  
  map.resources :dimensions
  map.resources :facts
  map.resources :opinions
  
  map.resources :fact_values

  map.beliefs '/beliefs', :controller => 'beliefs', :action => 'edit'
  
  map.one_belief '/one_belief/:id', :controller => 'popups', :action => 'one_belief'
  
  map.root :controller => 'pages', :action => 'home'
  map.about '/about', :controller => 'pages', :action => 'about'
  map.contact '/contact', :controller => 'pages', :action => 'contact'
  map.help '/help', :controller => 'pages', :action => 'help'
  
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.login '/login', :controller => 'user_sessions', :action => 'new'
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy'
  
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
