json.extract! product, :id, :user_id, :title, :kind, :size, :price, :description,:image, :image_data,  :created_at, :updated_at
json.url product_url(product, format: :json)
