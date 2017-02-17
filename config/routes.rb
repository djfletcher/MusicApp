Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]
  resources :bands, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :albums, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :tracks, only: [:show, :new, :create, :edit, :update, :destroy]
  resource :session, only: [:new, :create, :destroy]

end
