class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  # validates :description, length: { in: 10..500 }
  belongs_to :supplier
  has_many :images
  has_many :orders
end
