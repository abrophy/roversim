module Tracers
  # Handles Western travel by rover
  class West
    def turn_left
      Tracers::South.new
    end

    def turn_right
      Tracers::North.new
    end

    def move(rover)
      rover.decrease_x
    end

    def to_s
      'W'
    end
  end
end
