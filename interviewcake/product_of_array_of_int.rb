=begin
You have array of integers
Find product of every integer except integer in that index
[1,7,3,4] => [84,12,28,21]
Do not use division in your solution.
input: array of integers
output: array of products
=end

#PSEUDOCODE
=begin
int_array.delete(index).inject(:*)

=end

def get_products_of_all_ints_except_at_index(int_array)
  products_array = []
  int_array.each_with_index do |integer,i|
    array_with_no_int = int_array - [int_array.slice(i)]
    products_array << array_with_no_int.inject(:*)
  end
  products_array
end

#O(n) time
#O(n) space

#DRIVER CODE
p get_products_of_all_ints_except_at_index([1,7,3,4]) == [84,12,28,21]
p get_products_of_all_ints_except_at_index([2,1,5,5]) # careful. soln doesn't work with this one bc slice gets rid of ALL 5's, meaning array_with_no_int becomes just [2,1]