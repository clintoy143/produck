class Product < ApplicationRecord
    belongs_to :supplier, dependent: :destroy
end
