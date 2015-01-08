class Item
    attr_reader :quantity, :ship_price_per_oz
    attr_accessor :name, :price, :description, :weight

    @@ship_price_per_oz = 1.2

    def initialize name, price, weight=0
        @name = name
        @price = price
        @quantity = 0
        @description = ""
        @weight = weight
        

        
    end

    def sell amount
        if @quantity >= amount
            @quantity -= amount
            true
        else
            false
        end
    end

    def stock amount
        @quantity += amount
        true
    end

    def returns amount
        @quantity += amount
        true
    end

    # def ship_price weight
    #     if @weight >= 0 
    #         @weight * @@ship_price_per_oz = weight
    #         true
    #     else 
    #         false
    #     end
    # end
    def ship_price
        return false if @weight == -1
        @@ship_price_per_oz * @weight
    end
end