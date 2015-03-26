class Ship
  attr_reader :size, :hit_count

  DEFAULT_SIZE = 2
  def initialize(options = {})
    @size = options.fetch(:size, DEFAULT_SIZE)
    @hit_count = 0
  end

  def hit
    @hit_count += 1
  end

  def sunk?
    @hit_count == @size
  end
end
