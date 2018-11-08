Rails.application.routes.draw do
  #get 'users/show'
  #root to: 'posts/', to: "posts#index"

  devise_for :users

  resources :posts
  

  # deviseではshowのルーティングがなかったので追加
  resources :users, only: [:show]
  # Twitterログインに必要
  get 'users/show'

  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'posts/', to: 'posts#index'
  #get 'posts/new'
  #post 'posts/new', to: 'posts#create'
  #get 'posts/:id', to: 'posts#show'
  #get 'posts/edit/:id', to: 'posts#edit'
  #patch 'posts/edit/:id', to: 'posts#update'
  #post 'posts/delete/:id', to: 'posts#delete'

  #get 'users/index'
  #get 'users/new'
  #post 'users/new', to: 'users#create'
  #get 'users/:id', to: 'users#show'
  #get 'users/edit/:id', to: 'users#edit'
  #patch 'users/edit/:id', to: 'users#update'
  #post 'users/delete/:id', to: 'users#delete'


end
