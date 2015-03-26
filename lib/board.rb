class Board
  attr_reader :grid

  def initialize
    @size = 10
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
