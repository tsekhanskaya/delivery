json.extract! product, :id, :category_id, :brand_id, :title, :bytitle, :content, :price, :old_price, :status, :keywords, :description, :img, :hit, :created_at, :updated_at
json.url product_url(product, format: :json)
