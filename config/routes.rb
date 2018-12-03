Rails.application.routes.draw do

  get 'posts/like_ranking'

  devise_for :users

  #devise_for :users do
    #get '/users/sign_out' => 'devise/sessions#destroy'
  #end

  resources :posts do
    resources :likes, only: [:create, :destroy]
  end

  #resources :posts do
  #  resources :likes, only: [:create, :destroy]
  #end

  # deviseではshowのルーティングがなかったので追加
  resources :users, only: [:show]
  # Twitterログインに必要
  #get "users#show"
  #get "users/:id", to: "users#show" これは単独の時？

  #post "likes/:post_id/create" => "likes#create"
  #post "likes/:post_id/destroy" => "likes#destroy"

  root to: "posts#index"

end
