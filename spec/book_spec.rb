require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book = Book.new("Manifesto",12.99)
  end

  #check initialization

  describe "initialization" do
       #check that it is an instance of Book
    it "should describe an initialization of a book" do
      expect(@book).to be_instance_of(Book)
    end
    it "is assigned a name" do
      expect(@book.name).to eq "Manifesto"
    end
    it "is assigned a price" do
      expect(@book.price).to eq 12.99
    end
    it "is assigned a weight" do
      expect(@book.weight).to eq 0
    end
  end

  #check that it is an extended from Item

  describe "inheritance of item" do
    it "should be inherited from item" do
      expect(Book < Item).to eq true
    end
  end

  #check getters and setters

  describe "accessors" do
    it "should be able to get and set pages" do
      expect(@book.pages).to eq 0
      @book.pages=100
      expect(@book.pages).to eq 100
    end
    it "should be able to get and set author" do
      expect(@book.author).to eq ""
      @book.author="JustWyoming"
      expect(@book.author).to eq "JustWyoming"
    end
  end

end