require './lib/takeaway'

describe Takeaway do
  # let(:menu) { double :menu, :display => "Pizza, £12\nJacket Patato, £6\nBurger, £5\nChips, £2\n"}
  # before (:each) do
  #   subject = Takeaway.new(menu)
  # end

  context '#show_menu' do
    it 'displays a menu' do
      expect { subject.show_menu }.to output("Pizza, £12\nJacket Patato, £6\nBurger, £5\nChips, £2\n").to_stdout
    end
  end
end
