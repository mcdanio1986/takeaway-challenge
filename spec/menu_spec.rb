require 'menu'

describe Menu do
  context '#display' do
    it 'displays each item with the price on a new line' do
      expect { subject.display }.to output("Pizza, £12\nJacket Patato, £6\nBurger, £5\nChips, £2\n").to_stdout
    end
  end
end
