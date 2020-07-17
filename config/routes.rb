Rails.application.routes.draw do
  devise_for :accounts
  root to: "public#homepage"
  get 'dashboard', to: 'accounts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
