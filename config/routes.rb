Rails.application.routes.draw do
  devise_for :users

  root "movies#index"

  resources :users, only: [:show]

  resources :movies, only: [:index, :show] do
    resources :reviews, only: [:create, :new , :edit, :update, :destroy] 
  end

  resources :movies do
    resource :likes, only: [:create, :destroy]
  end

  resources :reviews do
    resources :favorites, only: [:create, :destroy]
  end

  resources :events

  namespace :admin do
    resources :movies, only: [:new, :create, :edit, :update, :destroy]
  end
  
end
