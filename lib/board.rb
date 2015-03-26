class Board
  attr_reader :grid

  DEFAULT_SIZE = 10
  def initialize(options = {})
    @size = options.fetch(:size, DEFAULT_SIZE)
    @grid = {}
    initialize_grid @size
  end

  def initialize_grid size
    ('A'..(size + 64).chr).each do |letter|
      (1..size).each do |number|
        grid[("#{letter}#{number}").to_sym] = :cell
      end
    end
  end
end
