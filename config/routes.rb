Rails.application.routes.draw do


  get 'pages/index'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :bookings

  resource :offers
  resources :bookings do
    resources :reviews, only: [:show, :new, :create]
  end

  # resources :bookings do
  #   resources :reviews, only: [:index, :show, :new, :create]
  # end

  root to: "pages#index"

end
