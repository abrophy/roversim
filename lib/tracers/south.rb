module Tracers
  class South
    def turn_left
      Tracers::East.new
    end

    def turn_right
      Tracers::West.new
    end

    def move(origin)
      { x: origin[:x], y: origin[:y] - 1 }
    end

    def to_s
      'S'
    end
  end
end
