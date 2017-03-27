class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def show
    @supplier = Supplier.find(params[:id])
    @supplier_item = SupplierItem.new
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(supplier_params)

    if @supplier.save
      redirect_to(:action => 'index')
    else
      render 'new'
    end
  end

  def soft_delete
    @supplier = Supplier.find(params[:id])

    if @supplier.supplier_items.exists?
      flash[:error] = "This supplier cannot be deleted because it has supplier items."
    else
      @supplier.update_attribute(:deleted_at, Time.current)
    end

    redirect_to(:action => 'index')
  end

  private
    def supplier_params
      params.require(:supplier).permit(:name, :address)
    end
end
