# frozen_string_literal: true

# Join Table which bridges Product and Cart. Needed to add multiple quantities of each product to Cart
class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :order

  # LOGIC
  def total_price
    quantity * product.price
  end
end
