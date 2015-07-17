=begin
function takes integer n and returns the nth fibonacci number
0 1 1 2 3 5 8 etc...
0 1 2 3 4 5 6

PSEUDOCODE
n = fib(n-1) + fib(n-2)
base_case = 1
fib_seq = [0]
need to know what is (n - 3) and (n - 2) to get (n - 1), need to know what (n - 4) and (n - 3) to get (n - 2) and so on.

n = number in the sequence = index + 1
if n = 0 or 1, then return 0 or 1
if n = 2, then return 1
if n >= 2 then fib_seq is at least [0,1,1,2]
start fib_rec(x)
  fib_seq.push(fib[-1] + fib[-2])

=end

#RECURSIVE SOLN
def fib_rec(n)
  if [0,1].include?(n)
    return n
  end
  return (fib_rec(n-1)) + (fib_rec(n-2))
end

class Fibby
  def initialize
    @memo_hash = {}
  end

  def fib(n)
    if n<0
      raise Exception("n can't be negative")
    elsif [1,0].include?(n)
      return n
    end

    if @memo_hash.keys.include?(n)
      return @memo_hash[n]
    end

    result = fib(n-1) + fib(n-2)
  end

end


# DRIVER CODE
p fib_rec(0) == 0
p fib_rec(1) == 1
p fib_rec(2) == 1
p fib_rec(3) == 2
p fib_rec(4) == 3

sequence = Fibby.new
p sequence.fib(0) == 0
p sequence.fib(1) == 1
p sequence.fib(2) == 1
p sequence.fib(3) == 2
p sequence.fib(1) == 1
p sequence.fib(6) == 8