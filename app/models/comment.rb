class Comment < ApplicationRecord
  belongs_to :book
  belongs_to:customer
  validates :body, presence: true
end
