# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'prog'

# Test Class
class TestClass < MiniTest::Unit::TestCase
  def test_default
    prec = 0.01
    assert_equal(find_first(prec), 100)
  end

  def test_negative_prec
    prec = -5
    assert_equal(find_first(prec), '[error]: Precision must be positive float!')
  end

  def test_string_prec
    prec = '0.0001'
    assert_equal(find_first(prec), '[error]: Precision must be positive float!')
  end
end
