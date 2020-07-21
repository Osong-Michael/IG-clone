Rails.application.routes.draw do
  devise_for :accounts
  root to: "public#homepage"
  get 'dashboard', to: 'accounts#index'
  get 'profile/:username', to: 'accounts#profile', as: :profile
  get 'post/like/:post_id', to: 'likes#save_like', as: :like_post
  post 'follow/account', to: 'accounts#follow_account', as: :follow_account
  resources :posts, only: [:new, :create, :show]
  resources :comments, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
