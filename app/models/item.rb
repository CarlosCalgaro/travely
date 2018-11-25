class Item < ApplicationRecord
    belongs_to :product
    has_one :cart_item
    has_one :cart, through: :cart_item

    def total_value
        quantity * price
    end
    
end
