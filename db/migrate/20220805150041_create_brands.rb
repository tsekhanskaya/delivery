# frozen_string_literal: true

class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :title
      t.string :bytitle
      t.string :description
      t.string :img, default: 'no_image.jpg'
      t.string :link
      t.string :address

      t.timestamps
    end
  end
end
