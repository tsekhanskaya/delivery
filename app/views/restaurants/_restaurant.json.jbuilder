# frozen_string_literal: true

json.extract! restaurant, :id, :title, :bytitle, :address, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
