class Order < ApplicationRecord
  belongs_to :customer

  has_many :book_orders
  has_many :books, through: :book_orders
  enum :status, [:shipped, :being_packed, :complete, :cancelled]
end
