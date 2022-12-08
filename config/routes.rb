Rails.application.routes.draw do
  resources :recruiters
  # , only: [:show]
  resources :jobs
  post "/login", to: "sessions#create"
  post "/signup", to: "recruiters#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
