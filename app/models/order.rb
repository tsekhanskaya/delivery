# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :product
  belongs_to :cart_status
  has_many :line_items, dependent: :destroy
end
