Rails.application.routes.draw do
  root 'flights#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

 
end
