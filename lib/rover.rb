require 'roversim_abrophy/version'

# Rover class that stores rover position state
class Rover
  attr_accessor :position, :direction

  DIRECTION_LIST = ['N', 'E', 'S', 'W']

  def initialize(zone, position)
    @zone = zone
    @position = [position[0], position[1]]
    @direction_index = DIRECTION_LIST.index(position[2])
  end

  def direction
    DIRECTION_LIST[@direction_index]
  end

  def turn_left
    if @direction_index == 0
      @direction_index = DIRECTION_LIST.length - 1
    else
      @direction_index -= 1
    end
  end

  def turn_right
    @direction_index = (@direction_index + 1) % DIRECTION_LIST.length
  end
end
