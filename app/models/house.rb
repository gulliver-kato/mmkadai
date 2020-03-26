class House < ApplicationRecord
    has_many :routes, dependent: :destroy
    accepts_nested_attributes_for :routes, reject_if: :reject_both_blank, allow_destroy: true
    

    validates :name, presence: true
    validates :price, presence: true

    def reject_both_blank(attributes)
        if attributes[:id]
          attributes.merge!(_destroy: "1") if attributes[:line].blank? and attributes[:station].blank? and attributes[:time].blank?
          !attributes[:line].blank? and attributes[:station].blank? and attributes[:time].blank?
        else
          attributes[:line].blank? and attributes[:station].blank? and attributes[:time].blank?
        end
      end
end
