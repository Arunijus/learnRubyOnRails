class CreateSupplierItems < ActiveRecord::Migration[5.0]
  def change
    create_table :supplier_items do |t|
      t.string :ean
      t.text :description
      t.timestamps
    end
  end
end
