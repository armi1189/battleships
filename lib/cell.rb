class Cell
  attr_reader :container, :hit
  alias_method :hit?, :hit

  def initialize
    @hit = false
  end

  def hit!
    @hit = true
  end

  def container= ship
    fail 'You can\'t place another ship here!' if @container
    @container = ship
  end
end
