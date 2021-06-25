Rails.application.routes.draw do
  resources :reservations
  get 'rooms/index'
  get 'home/index'
  get 'users/account'
  post 'reservations/confirm'
  post 'rooms/:id', to: 'reservations#confirm' 
  root to: "home#index"
   
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  devise_scope :user do
    get 'profile_edit', to: 'users/registrations#profile_edit', as: 'profile_edit'
    patch 'profile_update', to: 'users/registrations#profile_update', as: 'profile_update'
  end
  
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
