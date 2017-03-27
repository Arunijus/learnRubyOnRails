class AddDeletedAtToSupplierItem < ActiveRecord::Migration[5.0]
  def change
    add_column :supplier_items, :deleted_at, :dateTime
  end
end
