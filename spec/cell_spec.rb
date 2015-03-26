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
  end
end
