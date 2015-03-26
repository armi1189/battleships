class Board
  attr_reader :grid

  DEFAULT_SIZE = 10
  DEFAULT_CELL = String
  def initialize(options = {})
    @size = options.fetch(:size, DEFAULT_SIZE)
    @cell = options.fetch(:cell, DEFAULT_CELL)
    @grid = {}
    initialize_grid @size
  end

  def initialize_grid size
    ('A'..(size + 64).chr).each do |letter|
      (1..size).each do |number|
        grid[("#{letter}#{number}").to_sym] = @cell.new
      end
    end
  end

  def place ship, coord
    get_coords(ship.size, coord).each do |coordinate|
      grid[coordinate].container = ship
    end
  end

  def get_coords size, coord
    coords = [coord]
    (size - 1).times { coords << coords.last.next }
    coords
  end
end
