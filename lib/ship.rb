class Ship
  attr_reader :size

  DEFAULT_SIZE = 2
  def initialize(options = {})
    @size = options.fetch(:size, DEFAULT_SIZE)
  end
end
