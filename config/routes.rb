Rails.application.routes.draw do
  get 'home/index'
  resources :stories
  devise_for :users
  root to: "home#index"
end
