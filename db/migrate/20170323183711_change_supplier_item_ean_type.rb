class ChangeSupplierItemEanType < ActiveRecord::Migration[5.0]
  def change
    change_table :supplier_items do |t|
      t.change :ean, :string
    end
  end
end
