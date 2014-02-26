Blocitoff::Application.routes.draw do
  resources :todolists 

  get "welcome/index"
  get "welcome/about"
  
  devise_for :users

  match "about" => 'welcome#about', via: :get
  
  root :to =>'welcome#index'
end 

