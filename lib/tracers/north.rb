module Tracers
  class North
    def turn_left
      Tracers::West.new
    end

    def turn_right
      Tracers::East.new
    end

    def move(origin)
      { x: origin[:x], y: origin[:y] + 1 }
    end
  end
end
