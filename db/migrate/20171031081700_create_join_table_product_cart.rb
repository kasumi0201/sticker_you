class CreateJoinTableProductCart < ActiveRecord::Migration[5.1]
  def change
    create_join_table :products, :carts do |t|
      # t.index [:product_id, :cart_id]
      # t.index [:cart_id, :product_id]
    end
  end
end
