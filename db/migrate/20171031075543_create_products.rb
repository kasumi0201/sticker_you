class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      # t.references :order, foreign_key: true
      t.string :title
      t.string :type
      t.string :size
      t.integer :price
      t.text :description
      t.text :image_data

      t.timestamps
    end
  end
end
