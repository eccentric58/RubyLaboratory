# frozen_string_literal: true

require_relative 'prog'

print 'Enter precision (0.01 / 0.0001):'
prec = gets.to_f

puts "Result: #{find_first(prec)}"
