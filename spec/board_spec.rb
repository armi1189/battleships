require 'board'

describe Board do
  let(:board) { Board.new }
  context 'when created' do
    it 'has a default size of 10x10' do
      expect(board.grid.length).to eq 100
    end
  end
end
