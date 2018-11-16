Rails.application.routes.draw do
  #get 'users/show'
  #root to: 'posts/', to: "posts#index"
  devise_for :users

  #devise_for :users do
    #get '/users/sign_out' => 'devise/sessions#destroy'
  #end

  resources :posts

  # deviseではshowのルーティングがなかったので追加
  resources :users, only: [:show]
  # Twitterログインに必要
  #get "users#show"
  #get "users/:id", to: "users#show" これは単独の時？

  root to: "posts#index"

end
