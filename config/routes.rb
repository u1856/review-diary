Rails.application.routes.draw do
  devise_for :users

  root "movies#index"

  resources :movies do
    resources :reviews, only: :create
  end

  namespace :admin do
    resources :movies, only: [:new, :create, :edit, :destroy]
  end
  

end
