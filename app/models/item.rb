class Item < ApplicationRecord
    include ActionView::Helpers::NumberHelper

    belongs_to :product

    def total_value
        quantity * price
    end

    def price_format
        number_to_currency(self.price, :unit => "R$ ", :separator => ",", :delimiter => ".")
    end

    def total_format
        number_to_currency(self.total_value, :unit => "R$ ", :separator => ",", :delimiter => ".")
    end
end
