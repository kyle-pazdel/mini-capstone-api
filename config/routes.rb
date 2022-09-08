Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  get "/supplier/:id" => "suppliers#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  # user sign up route
  post "/users" => "users#create"

  # session create route
  post "/sessions" => "sessions#create"

  #orders routes
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"
end
