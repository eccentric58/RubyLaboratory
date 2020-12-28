# frozen_string_literal: true

require_relative 'prog'
require 'minitest/autorun'

# Test class
class TestClass < Minitest::Test
  def test_board
    w = 10
    l = 3
    sq = w * l
    board = Board.new(w, l)
    assert_equal(board.square, sq, '[error] Test-board failed')
  end

  def test_blackboard
    w = 10
    l = 3
    t = 4
    vol = w * l * t
    board = BlackBoard.new(w, l, t)

    assert_equal(board.volume, vol, '[error] Test-blackboard failed')
  end

  def test_arg_error
    w = '10'
    l = 5.1

    assert_raises(ArgumentError, '[error] Test-arg_error failed') { Board.new(w, l) }
  end
end
