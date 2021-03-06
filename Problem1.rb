=begin
	
If we list all 
the natural numbers 
below 10 that are multiples 
of 3 or 5, we get 3, 5, 6 and 9. 
The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
	
=end

multiples = []

1.upto(999) do |multiple|
  if num % 3 == 0 || num % 5 == 0
    multiples.push(num)
  end
end

sum_of_multples = multiples.reduce(:+)
puts sum_of_multples

