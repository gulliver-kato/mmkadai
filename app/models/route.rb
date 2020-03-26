class Route < ApplicationRecord
    belongs_to :house, optional: true
    
end
