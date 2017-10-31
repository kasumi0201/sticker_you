class RenameTypeColumnToProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :type, :kind
  end
end
