Rails.application.routes.draw do
  resources :phone_lists
  
  devise_for :users
  resources :links do
    resources :students
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root to: 'links#index'
  # root "articles#index"
end
