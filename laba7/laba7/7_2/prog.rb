# frozen_string_literal: true

# Board class
class Board
  attr_reader :width, :length
  def self.integers?(val1, val2)
    (val1.is_a? Integer) && (val2.is_a? Integer)
  end

  def initialize(w, l)
    raise ArgumentError, 'Arguments must be an ingeger.' unless Board.integers?(w, l)

    @width = w
    @length = l
  end

  def square
    @width * @length
  end
end

# BlackBoard class
class BlackBoard < Board
  attr_reader :thickness
  def initialize(w, l, t)
    super(w, l)
    raise ArgumentError, 'Thickness must be an integer.' unless t.is_a? Integer

    @thickness = t
  end

  def volume
    square * @thickness
  end

  def out_volume
    puts "Volume = #{square * @thickness}"
  end
end