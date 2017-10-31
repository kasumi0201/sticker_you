class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :shipping_postcode
      t.text :shipping_address
      t.integer :phone

      t.timestamps
    end
  end
end
