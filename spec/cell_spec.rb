require 'cell'

describe Cell do
  let(:cell) { Cell.new }

  context 'when created' do
    it 'isn\'t hit' do
      expect(cell).not_to be_hit
    end
  end
end
