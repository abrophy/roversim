#!/usr/bin/env ruby

require 'roversim_abrophy'

input_array = []
until ARGF.eof
  input = ARGF.gets.split("\n")
  input_array.push(input[0])
end

puts RoversimAbrophy.process(input_array)
