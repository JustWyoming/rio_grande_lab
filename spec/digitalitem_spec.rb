require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do 

    before(:context) do
      @digi = DigitalItem.new("Digital Monkey",1.99, -1)
    end

    describe "Initialization" do
      it "is an instance of the DigitalItem class" do
        expect(@digi).to be_instance_of(DigitalItem)
      end
      it "is assigned a name" do
        expect(@digi.name).to eq("Digital Monkey")
      end
      it "is assigned a price" do
        expect(@digi.price).to eq(1.99)
      end
       it "is assigned a weight" do
      expect(@digi.weight).to eq -1
    end
  end

    describe "Accessors" do
      it "should be able to get quantity" do
        expect(@digi.quantity).to eq(1)
      end
      it "should be able to get and set name" do
        @digi.name="New Name"
        expect(@digi.name).to eq("New Name")
      end   
      it "should be able to get and set price" do
        @digi.price=4.99
        expect(@digi.price).to eq(4.99)
      end   
      it "should be able to get and set description" do
        expect(@digi.description).to eq("")
        @digi.description="test"
        expect(@digi.description).to eq("test")
      end 
      it "should be able to get" do
      expect(@digi.weight).to eq -1
    end   
  end

    describe "Methods" do
      it "should be a default value of false" do
        expect(@digi.stock).to eq false
      end
      it "should be selling from original copy, and should show true" do
        expect(@digi.sell).to eq true 
      end 
       it "should be a default value of true, even when item is returned" do
        expect(@digi.returns).to eq true
      end
      it "should be able to default shipping costs to false value because its digital" do
        result = @digi.ship_price 1.2
        expect(result).to eq(false)
        expect(@digi.weight).to eq(-1)
    end  
  end

  
end