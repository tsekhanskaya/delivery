# frozen_string_literal: true

class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :title
      t.string :bytitle
      t.string :address

      t.timestamps
    end
  end
end
