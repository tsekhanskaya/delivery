# frozen_string_literal: true

class CartStatus < ApplicationRecord
  has_one :order
end
