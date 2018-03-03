Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: [:index, :show]
  resources :jobs
  resources :boats 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'boats#index'
end
