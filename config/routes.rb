Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :bookings

  resources :users do
    resources :offers
    resources :bookings do
      resources :reviews, only: [:index, :show, :new, :create]
    end
  end

  # resources :bookings do
  #   resources :reviews, only: [:index, :show, :new, :create]
  # end

  root to: "pages#index"

end
