require_relative 'airport'

class Airport

  CAPACITY = 6

  attr_reader :planes
  attr_accessor :planes

  def initialize
    @planes = []
    @capacity = CAPACITY
  end

  def allow_takeoff(aeroplane)
    aeroplane.takes_off
  end

  def allow_landing(aeroplane)
    fail 'Airport is full!' if @planes.count >= CAPACITY
    @planes << aeroplane
    aeroplane.lands
  end

end
