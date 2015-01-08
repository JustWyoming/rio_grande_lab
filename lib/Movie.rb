require_relative 'DigitalItem.rb'
class Movie < DigitalItem

  attr_accessor :run_time, :director, :producer
    
    def initialize name, price, weight=-1
      super(name, price, weight)
      @run_time = 2.25
      @director = "Spike Jonez"
      @producer = "Rich Guy"
    end


end