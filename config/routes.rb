Rails.application.routes.draw do
  resources :subscriptions
  resources :users

  root "users#index"
end
