Rails.application.routes.draw do
  root "home#index"
  get "api/resultado/:id", to: "home#resultado"
  get "api/resultado/", to: "home#resultado"

  resources :localidades
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
