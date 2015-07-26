def missing_num(elements_in_progression, prog_array)
  range = prog_array[-1] - prog_array[0]
  ap = range/elements_in_progression
  prog_array.each_with_index do |num, index|
    if index == (elements_in_progression-1)
      next
    elsif (prog_array[index+1] - num) != ap
      return missing_num = num + ap
    end
  end
end

p missing_num(5,[1,3,5,9,11]) ==  7
p missing_num(8,[1,5,13,17,21,25,29,33]) ==  9