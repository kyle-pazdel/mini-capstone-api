class ProductsController < ApplicationController
  def available_method
    products = Product.all
    available_products = Array.new
    products.each do |product|
      if product.availability == true
        available_products << product
      end
    end
    render json: available_products.to_json
  end

  def index
    products = Product.all
    render json: products.to_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
      availability: params["availability"],
    )
    product.save
    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params["id"])

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.availability = params["availability"] || product.availability
    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "DESTROOOYED!!!" }
  end
end
