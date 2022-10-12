Rails.application.routes.draw do
  root 'landings#index'
  devise_for :users
  resources :group_bills
  resources :bills
  resources :groups
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
