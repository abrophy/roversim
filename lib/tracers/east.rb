module Tracers
  class East
    def turn_left
      Tracers::North.new
    end

    def turn_right
      Tracers::South.new
    end

    def move(origin)
      { x: origin[:x] + 1, y: origin[:y] }
    end

    def to_s
      'E'
    end
  end
end
