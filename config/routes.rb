Rails.application.routes.draw do
  resources :payments
  resources :subscriptions
  resources :users

  root "users#index"
end
