class House < ApplicationRecord
    has_many :routes, dependent: :destroy
    # accepts_nested_attributes_for :routes, allow_destroy: true
    accepts_nested_attributes_for :routes
end
