# frozen_string_literal: true

require_relative 'prog'
require 'minitest/autorun'

# Test class
class TestFunction < Minitest::Test
  def test_lambda
    func = ->(x) { (x - 1) / (x + 2) }
    min = -0.5
    max = 0.25

    assert_in_delta(minmax(0, 2, &func)[0], min, 1e-4, '[error] Test 1 failed')
    assert_in_delta(minmax(0, 2, &func)[1], max, 1e-4, '[error] Test 1 failed')
  end

  def test_block
    min = -0.99749
    max = -0.47940

    assert_in_delta(minmax(-1, 1) { |x| Math.sin(x / 2 - 1) }[0], min, 1e-3, '[error] Test 2 failed')
    assert_in_delta(minmax(-1, 1) { |x| Math.sin(x / 2 - 1) }[1], max, 1e-3, '[error] Test 2 failed')
  end
end
