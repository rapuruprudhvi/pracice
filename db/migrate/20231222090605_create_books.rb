class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_published
      t.decimal :price
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
