require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    @blu = Bluray.new("Zoolander", 9.99)
  end

  #check inilization
    describe "initialization" do
       #check that it is an instance of Bluray
    it "should describe an initialization of a Bluray" do
      expect(@blu).to be_instance_of(Bluray)
    end
      it "is assigned a name" do
      expect(@blu.name).to eq("Zoolander")
    end
    it "is assigned a price" do
      expect(@blu.price).to eq(9.99)
    end
    it "is assigned a weight" do
      expect(@blu.weight).to eq 0
    end

  end
 
   #check that it is an extended from Item
   describe "inheritance of item" do
    it "should be inherited from item" do
      expect(Bluray < Item).to eq true
    end
  end

  #check getters and setters
     describe "accessors" do
      it "should be able to get and set run_time" do
        expect(@blu.run_time).to eq 2.25
        @blu.run_time=2.14
        expect(@blu.run_time).to eq 2.14
      end
      it "should be able to get and set director" do
        expect(@blu.director).to eq "Spike Jonez"
        @blu.director="Ben Stiller"
        expect(@blu.director).to eq "Ben Stiller"
      end
      it "should be able to get and set producer" do
        expect(@blu.producer).to eq "Rich Guy"
        @blu.producer="Rich Lady"
        expect(@blu.producer).to eq "Rich Lady"
      end
    end

end