Rails.application.routes.draw do
  resources :user_details
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/index'
  get 'users/new'
  post 'users/new', to: 'users#create'
  get 'users/:id', to: 'users#show'
  get 'users/edit/:id', to: 'users#edit'
  patch 'users/edit/:id', to: 'users#update'
  post 'users/delete/:id', to: 'users#delete'


end
