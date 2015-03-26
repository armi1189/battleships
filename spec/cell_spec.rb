require 'cell'

describe Cell do
  let(:cell) { Cell.new }
  let(:ship) { double :ship }

  context 'when created' do
    it 'isn\'t hit' do
      expect(cell).not_to be_hit
    end
  end

  context 'after been created' do
    it 'can contain something' do
      cell.container = ship
      expect(cell.container).to eq ship
    end

    it 'cannot contain more than one object' do
      cell.container = ship
      expect { cell.container = ship }.to raise_error
    end

    it 'can be hit' do
      cell.hit!
      expect(cell).to be_hit
    end

    it 'cannot be hit twice' do
      cell.hit!
      expect { cell.hit! }.to raise_error
    end
  end
end
