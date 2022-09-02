class Product < ApplicationRecord
  def is_discounted?
    true if price < 10
  end

  def tax
    tax = price * 0.09
  end

  def total
    tax + price
  end
end
