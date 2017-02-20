class Product < ApplicationRecord
    belongs_to :supplier, dependent: :destroy
    validates :price, presence: true
    validates :product_name, presence: true
    validates :description, presence: true
end
