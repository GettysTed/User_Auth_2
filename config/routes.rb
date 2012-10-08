UserAuth::Application.routes.draw do
  
  root :to => "sessions#home"
  match "signup", :to => "users#new"
  match "login", :to => "sessions#login"
  match "logout", :to => "sessions#logout"
  match "home", :to => "sessions#home"
  match "profile", :to => "sessions#profile"
  match "setting", :to => "sessions#setting"


  match ':controller(/:action(/:id))(.:format)'
end
