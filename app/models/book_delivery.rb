class BookDelivery < ApplicationRecord
  	belongs_to :book
    belongs_to :delivery
  
  end
  