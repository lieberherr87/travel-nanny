Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :bookings

  resources :offers
  resources :bookings do
    resources :reviews, only: [:show, :new, :create]
  end

  # resources :bookings do
  #   resources :reviews, only: [:index, :show, :new, :create]
  # end

  root to: "pages#index"

end
