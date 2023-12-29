class Book < ApplicationRecord
  belongs_to :author
  has_many :reviews

  has_many :book_orders
  has_many :orders, through: :book_orders  

  has_many :comments, dependent: :destroy

  has_many :book_deliveries
  has_many :deliveries, through: :book_deliveries
end
