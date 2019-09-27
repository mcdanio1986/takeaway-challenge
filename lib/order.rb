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

  end

end
