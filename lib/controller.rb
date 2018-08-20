require 'roversim_abrophy/version'

# Controls rover by passing instructions and requesting position data
class Controller
  def initialize(rover)
    @rover = rover
  end

  def process_instructions(instructions)
    instruction_array = instructions.split('')
    instruction_array.each do |item|
      case item
      when 'L'
        @rover.turn_left
      when 'R'
        @rover.turn_right
      when 'M'
        @rover.move
      end
    end
  end
end
