Rails.application.routes.draw do
  root 'landings#index'
  devise_for :users
  resources :groups do
    resources :bills
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
