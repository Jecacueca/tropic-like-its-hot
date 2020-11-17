Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :islands do
    resources :bookings, only: [:new, :create]
   end
  resources :bookings, except: [:update, :edit, :new, :create]
  resources :users, only: :show
end
