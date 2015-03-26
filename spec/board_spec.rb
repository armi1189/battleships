require 'board'

describe Board do
  let(:board) { Board.new cell: cell_class }
  let(:cell_class) { double :cell_class, new: cell }
  let(:cell) { double :cell }
  let(:host_cell) { double :host_cell }
  let(:ship) { double :ship, size: 2 }

  context 'when created' do
    it 'can have a default size of 10x10' do
      expect(board.grid.length).to eq 100
    end

    it 'can have a variable size' do
      board = Board.new size: 5, cell: cell_class
      expect(board.grid.length).to eq 25
    end
  end

  context 'after been created' do
    it 'can work out coordinates for a size' do
      expect(board.get_coords 2, :A1).to eq [:A1, :A2]
    end

    it 'can place a size 2 ship horizontally' do
      board.grid[:A1] = host_cell
      board.grid[:A2] = host_cell
      expect(host_cell).to receive(:container=).with(ship).exactly(2).times
      board.place ship, :A1
    end
  end
end
