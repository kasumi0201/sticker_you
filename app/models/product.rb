class Product < ApplicationRecord
  include ImageUploader[:image]
  belongs_to :user, optional: true
  has_many :ratings, dependent: :destroy
  has_many :product_orders
  has_many :orders, through: :product_orders
end

# has_many :user_projects
#   has_many :projects, through: :user_projects
