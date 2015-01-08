require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    @movie = Movie.new("Zoolander", 4.99)
  end

  #check inilization
    describe "initialization" do
       #check that it is an instance of Movie
    it "should describe an initialization of a Movie" do
      expect(@movie).to be_instance_of(Movie)
    end
      it "is assigned a name" do
      expect(@movie.name).to eq("Zoolander")
    end
    it "is assigned a price" do
      expect(@movie.price).to eq(4.99)
    end
     it "is assigned a weight" do
      expect(@movie.weight).to eq -1
    end

  end
 
   #check that it is an extended from DigitalItem
   describe "inheritance of DigitalItem" do
    it "should be inherited from DigitalItem" do
      expect(Movie < DigitalItem).to eq true
    end
  end

  #check getters and setters
     describe "accessors" do
      it "should be able to get and set run_time" do
        expect(@movie.run_time).to eq 2.25
        @movie.run_time=2.14
        expect(@movie.run_time).to eq 2.14
      end
      it "should be able to get and set director" do
        expect(@movie.director).to eq "Spike Jonez"
        @movie.director="Ben Stiller"
        expect(@movie.director).to eq "Ben Stiller"
      end
      it "should be able to get and set producer" do
        expect(@movie.producer).to eq "Rich Guy"
        @movie.producer="Rich Lady"
        expect(@movie.producer).to eq "Rich Lady"
      end
    end

end