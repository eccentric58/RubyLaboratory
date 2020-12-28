
class Rezult < ApplicationRecord
  validates:input ,uniqueness: true
  class<<self
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

    def generate_rez(input_str,input_count)
      if exists?(input:input_str)
        message = "from db"
        show_array = eval(find_by(input: input_str).output)
      else
        message = "from server"
        show_array = calculate(input_count,input_str.split(" ").map(&:to_i))
        show_array.sort!{|a,b|a.length <=> b.length}
                   .reverse
        show_array.delete([])
        create(input: input_str, output: show_array.to_s)
      end
     return show_array,message
    end
  end
end
