Rails.application.routes.draw do
  
  root to: 'home#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :trips do
    resources :locations
  end
 
  resources :locations do
    resources :addresses
  end
end
