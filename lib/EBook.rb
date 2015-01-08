require_relative 'DigitalItem.rb'
class EBook < DigitalItem

  attr_accessor :pages, :author
    def initialize name, price, weight=-1
        super(name,price, weight)
        @pages = 0
        @author = ""
    end
end