=begin
2520 is the smallest number that 
can be divided by each of the 
numbers from 1 to 10 without any remainder.
What is the smallest positive number 
that is evenly divisible by all 
of the numbers from 1 to 20?
=end
def evenlyDividedbyEach(integer, arrayedRange)
  arrayedRange.each {|element| return false unless integer % element == 0}
  true
end

one_to_twenty = (1..20).to_a
product = one_to_twenty.inject(:*)
answer = nil
(20..product).step(20) {|num|  if evenlyDividedbyEach(num, oneToTwenty)
							     answer = num 
							     break
							   end}
puts answer