require './lib/order'
class Menu
  attr_reader :items

  def initialize
    @items = {

      "Pizza" => 12,
      "Jacket Patato" => 6,
      "Burger" => 5,
      "Chips" => 2,

              }
    end

    def display
      @items.each do |item,price|
      puts "#{item}, £#{price}"
      end
    end
end
