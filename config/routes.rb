Rails.application.routes.draw do
  devise_for :users

  root "movies#index"

  resources :users, only: [:show]

  resources :movies do
    resources :reviews, only: [:create, :new , :edit, :update, :destroy] do
      resources :favorites, only: [:create, :destroy]
    end
  end

  namespace :admin do
    resources :movies, only: [:new, :create, :edit, :destroy]
  end
  

end
