Rails.application.routes.draw do
  devise_for :users
  #get 'reviews/index'
  root "reviews#index"

  resources :reviews

end
