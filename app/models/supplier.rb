class Supplier < ApplicationRecord
  has_many :supplier_items

  default_scope { where("deleted_at IS NULL") }
end
