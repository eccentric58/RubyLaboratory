# frozen_string_literal: true

def func(num)
  num.to_f / (num**2 + 2)
end

def find_first(prec = 1e-2)
  return '[error]: Precision must be positive float!' unless (prec.is_a? Float) && prec.positive?

  series = Enumerator.new do |nums|
    num = 1
    loop do
      nums << func(num)
      num += 1
    end
  end

  series.find_index { |num| num < prec } + 1
end
