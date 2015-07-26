def missing_num(elements_in_progression, prog_array)
  p range = prog_array[-1] - prog_array[0]
  p ap = range/elements_in_progression
  prog_array.each_with_index do |num, index|
    if index == (elements_in_progression-1)
      return
    elsif (prog_array[index+1] - num) != ap
      missing_num = num + ap
    end
  end
  p missing_num
end

p missing_num(5,[1,3,5,9,11])