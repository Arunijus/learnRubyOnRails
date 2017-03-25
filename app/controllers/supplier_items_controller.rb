class SupplierItemsController < ApplicationController
  def create
    @supplier = Supplier.find(params[:supplier_id])
    @supplier_item = @supplier.supplier_items.create(supplier_item_params)

    redirect_to supplier_path(@supplier)
  end

  private
  def supplier_item_params
    params.require(:supplier_item).permit(:ean, :description, :purchase_price, :sales_price, :vat)
  end
end
