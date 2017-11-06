class AddColumnOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :stripe_confirmation_id, :string
  end
end
