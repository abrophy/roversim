# Rover class that stores rover position state
class Zone
  attr_accessor :width, :height
  def initialize(size)
    @width = size[0]
    @height = size[1]
  end
end
