Rails.application.routes.draw do
  resources :articles
  resources :users
  resources :subscriptions
  resources :payments
  resources :articles

  root "users#index"
end
