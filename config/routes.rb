Rails.application.routes.draw do
  devise_for :users

  root "reviews#index"

  resources :reviews

  namespace :admin do
    resources :reviews, only: [:new, :create, :edit, :destroy]
  end

end
