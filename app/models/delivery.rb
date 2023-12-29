class Delivery < ApplicationRecord
  belongs_to :customer
  has_and_belongs_to_many :books, join_table: 'book_deliverys'

   enum :status, [:shipped, :being_packed, :complete, :cancelled]

  scope :created_before, ->(time) { where(created_at: ...time) }


  has_many :book_deliveries
  has_many :books, through: :book_deliveries
end
