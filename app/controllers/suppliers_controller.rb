class SuppliersController < ApplicationController
  def show
    @supplier = Supplier.find_by(id: params["id"])
  end
end
