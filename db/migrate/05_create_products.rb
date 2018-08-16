# frozen_string_literal: true

# ADD PRODUCTS
class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :code
      t.integer :stock
      t.decimal :purchase_price, null: false
      t.decimal :selling_price
      t.date :expiration_date
      t.boolean :status, default: true

      t.timestamps
    end
  end
end
