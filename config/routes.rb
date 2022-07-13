Rails.application.routes.draw do
  get 'events/index'
  devise_for :users

  root "movies#index"

  resources :users, only: [:show]

  resources :movies do
    resources :reviews, only: [:create, :new , :edit, :update, :destroy] 
  end

  resources :movies do
    resource :likes, only: [:create, :destroy]
  end

  resources :reviews do
    resources :favorite, only: [:create, :destroy]
  end

  namespace :admin do
    resources :movies, only: [:new, :create, :edit, :update, :destroy]
  end
  
end
