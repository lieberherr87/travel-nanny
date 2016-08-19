Rails.application.routes.draw do


  get 'review/show'

  get 'review/new'

  get 'pages/index'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :offers
  resources :bookings do
    resources :reviews, only: [:index,:show, :new, :create]
  end

  root "pages#index"

end
