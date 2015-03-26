require 'board'

describe Board do
  let(:board) { Board.new }
  context 'when created' do
    it 'can have a default size of 10x10' do
      expect(board.grid.length).to eq 100
    end

    it 'can have a variable size' do
      board = Board.new size: 5
      expect(board.grid.length).to eq 25
    end
  end
end
