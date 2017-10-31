class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.integer :postcode
      t.text :address
      t.text :bio

      t.timestamps
    end
  end
end
