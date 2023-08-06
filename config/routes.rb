Rails.application.routes.draw do
  get 'bookings/new'
  root 'flights#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :bookings, only: [:new]
end
