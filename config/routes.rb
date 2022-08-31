Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/available_products/:available", controller: "products", action: "available_method"
  get "/one_product/:id" => "products#one_product_method"
end
