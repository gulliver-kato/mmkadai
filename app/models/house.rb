class House < ApplicationRecord
    has_many :routes, dependent: :destroy
    accepts_nested_attributes_for :routes, allow_destroy: true, update_only: true
    # accepts_nested_attributes_for :routes

    validates :name, presence: true
    validates :price, presence: true
end
