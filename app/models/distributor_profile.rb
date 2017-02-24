class DistributorProfile < ApplicationRecord
    belongs_to :distributor, dependent: :destroy
end
