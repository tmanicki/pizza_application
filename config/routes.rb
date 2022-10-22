Rails.application.routes.draw do
  resources :toppings, :pizzas
  devise_for :admins

  get 'home/index'
  root 'home#index'

  resources :pizza do
    get 'menu', on: :member
  end
  #get 'home/login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
