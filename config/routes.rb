Rails.application.routes.draw do
  get 'rooms/show'
  resources :tournaments
  devise_for :users, controllers: { omniauth_callback: "users/omniauth_callbacks"}

  resources :entries, only: [:create, :destroy]

  resources :rooms, only: [:show]

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
