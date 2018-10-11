Rails.application.routes.draw do
  root 'problems#index'
  resources :problems
  devise_for :users
  resources :users, :only => [:show]
  resources :request_managements, only:[:create, :destroy]
  resources :conversations do
    resources :messages
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
