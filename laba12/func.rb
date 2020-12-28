def power5?(n)
    while n % 5 == 0 do
      n = n.div 5
    end
    n == 1
end



def calculate(n, mas)
  mas1 = mas.clone
  mas1 << -2
  array = mas1.each_with_object(acc_5: [], array: []) do |e,a|
      if power5?(e) then
        a[:acc_5] << e
      else
        a[:array] << a[:acc_5]
        a[:acc_5] = []
      end
  end
  array[:array]
end
