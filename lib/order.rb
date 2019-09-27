class Order

  def initialize
    @total = 0
    @items = []
    @menu = menu
  end

  def add(item)
    @total +=menu.items[item]
    @items << menu.items.select { |food| food == item}
  end

  def order_total
    @items.each do |list|
      list.each do |food, price|
        puts "#{food}, £#{price}"
      end
  end

end
