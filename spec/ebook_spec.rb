require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    @ebook = EBook.new("Pattern Recognition",7.99)
  end

  #check initialization

  describe "initialization" do
       #check that it is an instance of EBook
    it "should describe an initialization of an Ebook" do
      expect(@ebook).to be_instance_of(EBook)
    end
      it "is assigned a name" do
      expect(@ebook.name).to eq("Pattern Recognition")
    end
    it "is assigned a price" do
      expect(@ebook.price).to eq(7.99)
    end
    it "is assigned a weight" do
      expect(@ebook.weight).to eq -1
    end

  end

  #check that it is an extended from DigitalItem

  describe "inheritance of DigitalItem" do
    it "should be inherited from DigitalItem" do
      expect(EBook < DigitalItem).to eq true
    end
  end

  #check getters and setters

  describe "accessors" do
    it "should be able to get and set pages" do
      expect(@ebook.pages).to eq 0
      @ebook.pages=512
      expect(@ebook.pages).to eq 512
    end
    it "should be able to get and set author" do
      expect(@ebook.author).to eq ""
      @ebook.author="William Gibson"
      expect(@ebook.author).to eq "William Gibson"
    end
  end

end