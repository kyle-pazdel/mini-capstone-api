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
    @products = Product.all
    pp current_user
    render template: "products/index"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      availability: params["availability"],
      supplier_id: params["supplier_id"],
      inventory: params["inventory"],
    )
    if @product.save
      Image.create(url: params["image_url"], product_id: @product.id)
      render template: "products/show"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.description = params["description"] || @product.description
    @product.availability = params["availability"] || @product.availability
    @product.inventory = params["inventory"] || @product.inventory
    @product.supplier_id = params["supplier_id"] || @product.supplier_id,
    @product.save
    render template: "products/show"
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "DESTROOOYED!!!" }
  end
end
