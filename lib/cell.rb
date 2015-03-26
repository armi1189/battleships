class Cell
  attr_reader :container

  def hit?
  end

  def container= ship
    fail 'You can\'t place another ship here!' if @container
    @container = ship
  end
end
