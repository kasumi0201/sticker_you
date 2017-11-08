class CreateProductOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :product_orders do |t|
      t.belongs_to :product, index: true
      t.belongs_to :order, index: true
      t.integer "quantity"

      t.timestamps
    end
  end
end
