require_relative '../lib/Item'

class DigitalItem < Item
    attr_reader :quantity, :ship_price_per_oz
    attr_accessor :name, :price, :description

    def initialize name, price, weight=-1
        @name = name
        @price = price
        @quantity = 1
        @description = ""
        @weight = -1
        @ship_price_per_oz = 1.2
    end

    def stock 
      false
    end

       def sell 
        true
    end

    def returns 
      true
    end
    
    def ship_price weight
        if @weight >= 0 
            @weight * @ship_price_per_oz = weight
            true
        elsif @weight == -1 
            false
        end
    end
end