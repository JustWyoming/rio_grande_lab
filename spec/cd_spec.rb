require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initlize item
    @cd = Cd.new("Mezzanine",9.99)
  end

  #check inilization

    describe "initialization" do
       #check that it is an instance of Cd
    it "should describe an initialization of a cd" do
      expect(@cd).to be_instance_of(Cd)
    end
      it "is assigned a name" do
      expect(@cd.name).to eq("Mezzanine")
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(9.99)
    end
    it "is assigned a weight" do
      expect(@cd.weight).to eq 0
    end

  end
  #check that it is an extended from Item
   describe "inheritance of item" do
    it "should be inherited from item" do
      expect(Cd < Item).to eq true
    end
  end

 
  #check getters and setters
    describe "accessors" do
      it "should be able to get and set tracks" do
        expect(@cd.tracks).to eq 10
        @cd.tracks=12
        expect(@cd.tracks).to eq 12
      end
      it "should be able to get and set artist" do
        expect(@cd.artist).to eq "JustWyoming"
        @cd.artist="Massive Attack"
        expect(@cd.artist).to eq "Massive Attack"
      end
      it "should be able to get and set run_time" do
        expect(@cd.run_time).to eq 56.00
        @cd.run_time=59.53
        expect(@cd.run_time).to eq 59.53
      end
    end
end