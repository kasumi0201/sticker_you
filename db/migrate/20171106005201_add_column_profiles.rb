class AddColumnProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :stripe_id, :string
  end
end
