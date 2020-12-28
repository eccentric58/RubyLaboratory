# frozen_string_literal: true

require_relative 'prog'

print 'Enter width and length: '
width, length = gets.chomp.split.map(&:to_i)
board1 = Board.new(width, length)
puts "Board1 square = #{board1.square}"

print 'Enter thickness: '
thickness = gets.chomp.to_i
board2 = BlackBoard.new(width, length, thickness)
puts "Board2 volume = #{board2.volume}"
board2.out_volume
puts "Width = #{board2.width}"
puts "Length = #{board2.length}"
puts "Thickness = #{board2.thickness}"
