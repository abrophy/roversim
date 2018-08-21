module Tracers
  # Handles Northern travel by rover
  class North
    def turn_left
      Tracers::West.new
    end

    def turn_right
      Tracers::East.new
    end

    def move(rover)
      rover.increase_y
    end

    def to_s
      'N'
    end
  end
end
