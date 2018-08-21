require 'roversim_abrophy/version'

require_relative './controller'
require_relative './rover'
require_relative './zone'
require_relative './tracers/north'
require_relative './tracers/east'
require_relative './tracers/south'
require_relative './tracers/west'

# Generates classes from input and returns destination
input_array = []
until ARGF.eof
  input = ARGF.gets.split("\n")
  input_array.push(input[0])
end

zone = Zone.new(input_array[0])
rover = Rover.new(zone, input_array[1])
controller = Controller.new(rover)

controller.process_instructions(input_array[2])
puts controller.destination
