class AddDeletedAtToSupplier < ActiveRecord::Migration[5.0]
  def change
    add_column :suppliers, :deleted_at, :dateTime
  end
end
