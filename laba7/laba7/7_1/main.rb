# frozen_string_literal: true

require_relative 'prog'

print 'Enter file name: '
fname = gets.chomp + '.txt'

puts 'Enter lines, type empty string to stop.'
File.open(fname, 'w') do |file|
  until (line = gets).chomp.empty?
    file.write(line)
  end
end

res_name = func(fname)