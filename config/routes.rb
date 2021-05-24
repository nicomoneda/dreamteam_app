Rails.application.routes.draw do
  devise_for :users
  root to: 'dreams#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources: 'dreams' do
    member do
      post 'buy', to: 'dreams#buy'
    end
  end
  
  get 'bought_dreams', to: 'dreams#bought'
  get 'my_dreams', to: 'dreams#sold'
  
  get 'my_profile' to: 'user#profile'
end
