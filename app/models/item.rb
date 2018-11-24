class Item < ApplicationRecord
    has_many :cart_items
    has_one :cart, through: :cart_items


    def total_value
        quantity * price
    end
    
end
