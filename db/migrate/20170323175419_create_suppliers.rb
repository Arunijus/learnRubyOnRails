class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.text :name
      t.text :address
      t.timestamps
    end
  end
end
