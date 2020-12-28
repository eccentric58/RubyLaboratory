# frozen_string_literal: true

def func(fname = 'F.txt')
  file = File.open(fname)
  lines = file.readlines.map(&:chomp)
  file.close

  File.open('G.txt', 'w') do |file|
    lines.each { |line| file.write(" #{line}\n") }
  end

  'G.txt' # result file name
end
