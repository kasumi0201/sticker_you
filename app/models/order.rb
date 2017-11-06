class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :product_orders
  has_many :products, through: :product_orders, :source => :product

  validates :shipping_postcode, :shipping_address, :phone, :stripe_confirmation_id, presence: true
end
