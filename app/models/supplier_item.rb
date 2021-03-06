class SupplierItem < ApplicationRecord
  belongs_to :supplier

  default_scope { where("deleted_at IS NULL") }

  validates_numericality_of :sales_price, :greater_than => :purchase_price, :message => "must be greater than purchase price."
  validates_numericality_of :purchase_price, :greater_than => 0, :less_than => :sales_price, :message => "must be less than sales price."
  validates :vat, inclusion: { in: [21,9], message: "%{value} is not a valid VAT" }
end
