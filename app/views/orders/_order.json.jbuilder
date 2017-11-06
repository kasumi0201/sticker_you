json.extract! order, :id, :user_id, :shipping_postcode, :shipping_address, :phone, :created_at, :updated_at, :stripe_confirmation_id
json.url order_url(order, format: :json)
