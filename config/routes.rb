Rails.application.routes.draw do
  resources :users
  resources :subscriptions
  resources :payments

  root "users#index"
end
