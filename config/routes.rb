Rails.application.routes.draw do
  resources :tournaments do
  	resource :entries, only: [:create, :destroy]
  	resource :goods, only: [:create, :destroy]
  end

  get 'tournaments/search' => 'tournaments#search'

  devise_for :users, controllers: { omniauth_callback: "users/omniauth_callbacks"}
  devise_scope :user do
    root :to => "users#show"
  end

  resources :users, only: [:show, :edit, :update]

  resources :rooms, only: [:show, :create]

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
