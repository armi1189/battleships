require 'capybara/rspec'
require 'cell'
require 'ship'

feature 'A cell can contain a ship and send a hit' do
  let(:cell) { Cell.new }
  let(:ship) { Ship.new }

  scenario 'Cell can contain a ship' do
    cell.container = ship
    expect(cell.container).to eq ship
  end

  scenario 'Cell can hit his contenent' do
    cell.container = ship
    cell.hit!
    expect(ship.hit_count).to eq 1
  end
end
