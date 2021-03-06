Rails.application.routes.draw do
  resources :sessions ,  only: [:create]
  resources :registrations, only: [:create]
  resources :tracks, only: [:index, :create]
  delete :logout, to: 'sessions#logout'
  get :loggued_in, to: 'sessions#loggued_in'
  root to: 'static#home'
end