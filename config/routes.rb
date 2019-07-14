Rails.application.routes.draw do
  get 'rooms/show'
  resources :tournaments do
  	resource :entries, only: [:create, :destroy]
  end

  devise_for :users, controllers: { omniauth_callback: "users/omniauth_callbacks"}

  resources :rooms, only: [:show, :create]

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
