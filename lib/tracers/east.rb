module Tracers
  # Handles Eastern travel by rover
  class East
    def turn_left
      Tracers::North.new
    end

    def turn_right
      Tracers::South.new
    end

    def move(rover)
      rover.increase_x
    end

    def to_s
      'E'
    end
  end
end
