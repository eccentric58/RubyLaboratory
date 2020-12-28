# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'prog'

# Test class
class TestFunction < Minitest::Test
  def test_main
    line1 = 'first'
    line2 = 'second line'
    line3 = 'last one'
    fname = 'test.txt'
    File.open(fname, 'w') do |file|
      [line1, line2, line3].each { |line| file.write(line + "\n") }
    end
    res_name = func(fname)

    file = File.open(res_name)
    lines = file.readlines.map(&:chomp)
    file.close
    assert_equal(lines[0], ' first', '[error] Test 1 failed')
  end
end
