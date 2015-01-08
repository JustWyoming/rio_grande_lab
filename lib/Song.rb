require_relative 'DigitalItem.rb'
class Song < DigitalItem

attr_accessor :artist, :run_time
  
  def initialize name, price, weight=-1
    super(name, price, weight)
    @artist = "JustWyoming"
    @run_time = 56.00
  end

end