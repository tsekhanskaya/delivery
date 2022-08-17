# frozen_string_literal: true

class OrderStatus < ApplicationRecord
  belongs_to :order
end
