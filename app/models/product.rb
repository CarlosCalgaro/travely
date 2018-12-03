class Product < ApplicationRecord
    include ActionView::Helpers::NumberHelper

    has_many :items

    def price_format
        number_to_currency(self.price, :unit => "R$ ", :separator => ",", :delimiter => ".")
    end

    def get_image
        return "/resources/images/product"+rand(1...5).to_s+".png" unless self.image
        return "/resources/images/"+self.image.to_s
    end
end
