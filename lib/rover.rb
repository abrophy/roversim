require 'roversim_abrophy/version'

# Rover class that stores rover position state
class Rover
  attr_accessor :direction, :x, :y

  def initialize(zone, position)
    @zone = zone
    @x = position[0]
    @y = position[1]
    @direction_key = position[2]
    @tracer = tracer
  end

  def direction
    @tracer.to_s
  end

  def increase_x
    @x += 1
  end

  def decrease_x
    @x -= 1
  end

  def increase_y
    @y += 1
  end

  def decrease_y
    @y -= 1
  end

  def turn_left
    @tracer = @tracer.turn_left
  end

  def turn_right
    @tracer = @tracer.turn_right
  end

  def tracer
    case @direction_key
    when 'N'
      Tracers::North.new
    when 'E'
      Tracers::East.new
    when 'S'
      Tracers::South.new
    when 'W'
      Tracers::West.new
    end
  end
end
