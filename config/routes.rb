Rails.application.routes.draw do
  get 'boats/index'
  get 'boats/new'
  get 'boats/create'
  get 'boats/show'
  get 'boats/edit'
  get 'boats/update'
  get 'boats/destroy'
  get 'users/index'
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
