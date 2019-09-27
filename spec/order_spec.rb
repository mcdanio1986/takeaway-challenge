require 'order'

describe Order do
  let(:menu) { double :menu, :items => { "Pizza" => 12, "Jacket Patato" => 6, "Burger" => 2, "Chips" =>2} }
  subject { Order.new(menu) }

  context '#initialize' do
    it 'creates a new order with a total of 0' do
      expect(subject.total).to eq 0
    end
  end

  context '#add' do
    it 'adds an item to the order' do
      subject.add("Pizza")
      expect(subject.total).to eq 12
    end

    it 'adds 2 items to the order' do
      subject.add("Pizza")
      subject.add("Burger")
      expect(subject.total).to eq 17
    end
  end

  context '#order_total' do
    it 'shows the individual items and the total of the order' do
      subject.add("Pizza")
      subject.add("Burger")
      expect { subject.order_total }.to output("Pizza, £12\nBurger, £5\nYour order total is £17\n").to_stdout
    end
  end
end
