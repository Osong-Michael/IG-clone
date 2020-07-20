Rails.application.routes.draw do
  devise_for :accounts
  root to: "public#homepage"
  get 'dashboard', to: 'accounts#index'
  get 'profile/:username', to: 'accounts#profile', as: :profile
  get 'post/like/:post_id', to: 'likes#save_like', as: :like_post
  resources :posts, only: [:new, :create, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
