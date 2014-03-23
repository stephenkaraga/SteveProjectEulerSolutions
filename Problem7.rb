=begin
	
By listing the first six prime 
numbers: 2, 3, 5, 7, 11, and 13, 
we can see that the 6th prime is 13.

What is the 10 001st prime number?
	
=end
require 'prime'
def find_prime(integer)
  Prime.first(integer).last
end
answer = find_prime(10001)
puts answer
