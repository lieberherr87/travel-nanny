
Rails.application.routes.draw do

  root "pages#index"

  get '/search' => 'offers#search'

  get 'review/show'

  get 'review/new'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :bookings

  resources :offers do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings do
    resources :reviews, only: [:index, :show, :new, :create]
  end

  get "/cities" => "pages#cities", as: :cities

end

