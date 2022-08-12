# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :restaurant_id
      t.integer :product_id
      t.integer :count
      t.string :status
      t.boolean :soft_delete

      t.timestamps
    end
  end
end
