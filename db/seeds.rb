# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# table cart_statuses

cart_statuses_attributes = [
  { status: 'Продукт помещен в корзину' },
  { status: 'Заказ оформлен.' },
  { status: 'Заказ одобрен. Ожидайте поставку!' }
]

cart_statuses_attributes.each do |attr|
  CartStatus.create(attr) unless CartStatus.where(attr).first
end
