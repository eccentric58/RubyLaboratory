# frozen_string_literal: true

def func(num)
  num.to_f / (num**2 + 2)
end

def find_first(prec = 1e-2)
  return '[error]: Precision must be positive float!' unless (prec.is_a? Float) && prec.positive?

  num = 1
  num += 1 while func(num) > prec
  num
end
