Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dreams do
    resources :bookings
    end

  get 'bought_dreams', to: 'dreams#bought'
  get 'my_dreams', to: 'dreams#sold'

  get 'my_profile', to: 'users#profile'
end
