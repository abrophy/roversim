require 'roversim_abrophy/version'

# simulates and predicts rover movement
class Controller
  attr_accessor :input

  def initialize(input)
    @input = input
  end
end
