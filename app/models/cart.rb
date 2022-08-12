# frozen_string_literal: true

# Create a new instance each time a new session occurs to keep track of added products throughout the app.
class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items
end
