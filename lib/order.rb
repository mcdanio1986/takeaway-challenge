class Order
  attr_accessor :total

  def initialize(menu = Menu.new)
    @total = 0
    @menu = menu
    @items = []

  end

  def add(item)
    @total += @menu.items[item]
    @items << @menu.items.select { |food| food == item}
  end

  def order_total
    @items.each do |list|
      list.each do |food, price|
        puts "#{food}, £#{price}"
      end
end
puts "Your order total is £#{@total}"
send_sms
end
end
