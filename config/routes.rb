Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users, only: [:index,:show,:edit,:update]
  resources :books
  root :to =>"homes#top"
  get "home/about"=>"homes#about"
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
