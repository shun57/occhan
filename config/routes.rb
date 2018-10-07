Rails.application.routes.draw do
  get 'users/show'
  root 'problems#index'
  resources :problems
  devise_for :users
  resources :users, :only => [:show]
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
