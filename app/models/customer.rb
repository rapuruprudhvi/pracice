class Customer < ApplicationRecord
    has_many:comments
    has_many:deliveries
    has_many :reviews

    has_many :orders
end
