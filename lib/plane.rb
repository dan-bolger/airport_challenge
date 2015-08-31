require_relative 'airport'

class Plane

  attr_reader :flying_status

  def initialize
    @flying_status = true
  end

  def lands
    @flying_status = false
  end

  def takes_off
    # @flying_status = true
  end

end
