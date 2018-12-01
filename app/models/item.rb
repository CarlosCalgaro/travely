class Item < ApplicationRecord
    belongs_to :product

    def total_value
        quantity * price
    end
    
end
