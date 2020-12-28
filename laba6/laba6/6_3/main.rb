# frozen_string_literal: true

require_relative 'prog'

f_lambda = ->(x) { (x - 1) / (x + 2) }
res1 = minmax(0, 2, &f_lambda)
puts 'function y=(x-1)/(x+2)'
puts "min: #{res1[0]}"
puts "max: #{res1[1]}"

res2 = minmax(-1, 1) { |x| Math.sin(x / 2 - 1) }
puts 'function y=sin(x)/2-1'
puts "min: #{res2[0]}"
puts "max: #{res2[1]}"
