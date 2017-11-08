class Order < ApplicationRecord
  belongs_to :user, optional: true
  # belongs_to :product
  has_many :product_orders
  has_many :products, through: :product_orders#, :source => :product

  # validates :shipping_postcode, :shipping_address, :phone, :stripe_confirmation_id, presence: true
  def self.total(orders)
    puts "-----#{orders.last.products.inspect}"
    total = orders.last.products.map { |product| product.price }
    puts "--- total: #{total.inspect}"
    total.reject { |c| c.nil? }.sum
  end
end
