class AddCustomerToBooks < ActiveRecord::Migration[7.1]
  def change
    add_reference :books, :customer, foreign_key: true, default: 1
  end
end
