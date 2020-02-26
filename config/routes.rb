Rails.application.routes.draw do
  resources :stories
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  get 'home/index'
  get 'users', to: 'users#index' 
  get 'users/:id', to: 'users#user_type', as: 'user_type'
  root to: "home#index"
end
