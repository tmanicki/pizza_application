Rails.application.routes.draw do
  devise_for :admins
  resources :toppings
  get 'home/index'
  root 'home#index'
  #get 'home/login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
