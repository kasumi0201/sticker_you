class DropJoinTable < ActiveRecord::Migration[5.1]
  def change
    drop_join_table :carts, :products 
  end
end
