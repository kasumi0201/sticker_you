json.extract! rating, :id, :user_id, :product_id, :rating, :comment, :created_at, :updated_at
json.url rating_url(rating, format: :json)
