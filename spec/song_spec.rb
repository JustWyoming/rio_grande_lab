require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    #initlize DigitalItem
    @song = Song.new("Inertia Creeps",1.99)
  end

  #check inilization

    describe "initialization" do
       #check that it is an instance of Song
    it "should describe an initialization of a Song" do
      expect(@song).to be_instance_of(Song)
    end
      it "is assigned a name" do
      expect(@song.name).to eq("Inertia Creeps")
    end
    it "is assigned a price" do
      expect(@song.price).to eq(1.99)
    end
      it "is assigned a weight" do
      expect(@song.weight).to eq -1
    end

  end
  #check that it is an extended from DigitalItem
   describe "inheritance of DigitalItem" do
    it "should be inherited from DigitalItem" do
      expect(Song < DigitalItem).to eq true
    end
  end

 
  #check getters and setters
    describe "accessors" do
      it "should be able to get and set artist" do
        expect(@song.artist).to eq "JustWyoming"
        @song.artist="Massive Attack"
        expect(@song.artist).to eq "Massive Attack"
      end
      it "should be able to get and set run_time" do
        expect(@song.run_time).to eq 56.00
        @song.run_time=3.32
        expect(@song.run_time).to eq 3.32
      end
    end
end