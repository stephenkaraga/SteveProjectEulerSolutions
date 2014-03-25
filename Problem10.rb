=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million	
	
=end
require 'prime'
primes = []

Prime.each(2000000) do |prime|
  primes.push(prime)
end

sum = primes.reduce(:+)
puts sum