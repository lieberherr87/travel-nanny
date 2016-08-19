Rails.application.routes.draw do



  get '/search' => 'offers#search'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :offers do
    resources :bookings, only: [:index, :new, :create, :destroy]
  end

  resources :bookings, only: [:index, :show, :destroy]

  resources :bookings do
    resources :reviews, only: [:show, :new, :create]
  end

  root "pages#index"

end
