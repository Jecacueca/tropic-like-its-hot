Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # root: '/'

  # get '/islands', to: "islands#index"

  resources :islands do
    resources :bookings, only: [:new, :create]
   end
  resources :bookings, except: [:new, :create] do
    member do
      get 'confirmation'
    end
  end
  get 'profile', action: :show, controller: 'users'

end
