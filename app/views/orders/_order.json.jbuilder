json.extract! order, :id, :user_id, :shipping_postcode, :shipping_address, :phone, :created_at, :updated_at
json.url order_url(order, format: :json)
