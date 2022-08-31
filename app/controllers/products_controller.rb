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
end
