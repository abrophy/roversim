module Tracers
  class West
    def turn_left
      Tracers::South.new
    end

    def turn_right
      Tracers::North.new
    end

    def move(origin)
      { x: origin[:x] - 1, y: origin[:y] }
    end

    def to_s
      'W'
    end
  end
end
