Rails.application.routes.draw do
  resources :phone_lists
  get 'map' ,to:'map#show'

  get 'admin' ,to:'links#admin'
  
  devise_for :users
  resources :links do
    resources :students
  end

  resources :users, only: [:index, :destroy]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root to: 'links#index'
  # root "articles#index"
end
