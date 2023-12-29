class CreateJoinTableBooksDeliveries < ActiveRecord::Migration[7.1]
  def change
    create_join_table :books, :deliveries do |t|
      t.index [:book_id, :delivery_id]
      t.index [:delivery_id, :book_id]
      t.timestamps
    end
  end
end
