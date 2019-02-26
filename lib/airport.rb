class Airport

  attr_reader :planes

  def initialize(capacity)
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    raise 'Cannot land plane: airport full' if full?
    @planes << plane
  end

  def take_off(plane)
    @planes.delete(plane)
  end

  private

  def full?
    @planes.length >= @capacity
  end

end