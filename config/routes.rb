Rails.application.routes.draw do
  devise_for :admins
  root to: 'tournaments#index'

  get 'homes/top' => 'homes#top'
  resources :tournaments do
  	resource :entries, only: [:create, :destroy]
  	resource :goods, only: [:create, :destroy]
  end

  get 'tournaments/search/search' => 'tournaments#search'

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks"}
  devise_scope :user do
    root :to => "tournaments#index"
  end

  resources :users, only: [:show, :edit, :update]

  resources :rooms, only: [:show, :create]

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
