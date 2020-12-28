# frozen_string_literal: true

def minmax(a, b)
  (a..b).step(0.01).map { |x| yield x }.minmax
end
