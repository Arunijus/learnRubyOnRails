class AddPriceAndVatToSupplierItem < ActiveRecord::Migration[5.0]
  def change
    add_column :supplier_items, :sales_price, :float
    add_column :supplier_items, :purchase_price, :float
    add_column :supplier_items, :vat, :integer
  end
end
