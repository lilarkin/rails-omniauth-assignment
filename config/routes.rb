Rails.application.routes.draw do
  
  root to: 'home#index'

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  resources :trips do
    resources :locations
  end
 
  resources :locations do
    resources :addresses
  end

  resources :signup

  resources :newsletter, only: [:new, :create]

  get '/rails/mailers', to: "rails/mailers#index"
  get '/rails/mailers/*path', to: "rails/mailers#preview"


end
