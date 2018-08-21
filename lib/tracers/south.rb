module Tracers
  class South
    def turn_left
      Tracers::East.new
    end

    def turn_right
      Tracers::West.new
    end

    def move(rover)
      rover.decrease_y
    end

    def to_s
      'S'
    end
  end
end
