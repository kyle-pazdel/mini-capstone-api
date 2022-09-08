class OrdersController < ApplicationController
  def index
    orders = Order.all
    render json: orders.as_json
  end

  def show
    order = Order.find_by(user_id: params["id"])
    render json: order
  end

  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: ,
      tax: params["tax"],
      total: params["total"],
    )

    if order.save
      render json: order
    else
      render json: { message: "No order created" }
    end
  end
end
