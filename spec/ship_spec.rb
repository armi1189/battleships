require 'ship'

describe Ship do
  let(:ship) { Ship.new }

  context 'when created' do
    it 'has a default size of 2' do
      expect(ship.size).to eq 2
    end

    it 'can have a variable size' do
      ship = Ship.new size: 4
      expect(ship.size).to eq 4
    end
  end
end
