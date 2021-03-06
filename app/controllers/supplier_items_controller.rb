class SupplierItemsController < ApplicationController
  def create
    @supplier = Supplier.find(params[:supplier_id])
    @supplier_item = @supplier.supplier_items.build(supplier_item_params)

    if @supplier_item.save
      redirect_to supplier_path(@supplier)
    else
      render 'suppliers/show', id: params[:supplier_id]
    end
  end

  def edit
    @supplier_item = SupplierItem.find(params[:id])
  end

  def update
    @supplier_item = SupplierItem.find(params[:id])

    if @supplier_item.update(supplier_item_params)
      redirect_to supplier_path(@supplier_item.supplier)
    else
      render 'edit'
    end
  end

  def soft_delete
    @supplier_item = SupplierItem.find(params[:id])
    @supplier_item.update_attribute(:deleted_at, Time.current)

    redirect_to supplier_path(@supplier_item.supplier)
  end

  private

  def supplier_item_params
    params.require(:supplier_item).permit(:ean, :description, :purchase_price, :sales_price, :vat)
  end
end
