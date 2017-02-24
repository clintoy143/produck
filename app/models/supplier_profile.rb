class SupplierProfile < ApplicationRecord
    belongs_to :supplier, dependent: :destroy
end
