class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def show
    @supplier = Supplier.find(params[:id])
    @supplier_items = @supplier.supplier_items
  end

  def new
    @supplier = Supplier.new
  end

  def create
    if Supplier.create(supplier_params)
      redirect_to(:action => 'index')
    else
      render 'new'
    end
  end

  private
    def supplier_params
      params.require(:supplier).permit(:name, :address)
    end
end
