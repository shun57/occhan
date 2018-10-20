Rails.application.routes.draw do
  root 'problems#index'
  resources :problems do
    resources :reviews
  end
  devise_for :users
  resources :users, only: [:show]
  resources :request_managements, only: %i[create destroy]
  resources :conversations do
    resources :messages
  end
end
