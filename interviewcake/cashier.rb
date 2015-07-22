=begin

 input: amount of cents, and list of coin denominations
 ouput: possible ways (combinations) to achieve this amount of cents given this list of coin denominations

give_change(4,[1,2,3]) => 4
1, 1, 1, 1
1, 1, 2
1, 3
2, 2
=end

def give_change(amount,coin_denominations)
  possible_combinations = 0
  coin_denominations.each do |denom|
    if amount % denom ==  0
      possible_combinations += 1
    elsif coin_denominations.amount % denom
    end
  end
end