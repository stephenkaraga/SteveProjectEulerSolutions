=begin
	The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?	
=end

def is_prime integer
  if integer < 2 || (integer.even? && integer != 2) || (integer.to_s.split("").last.to_i == 5 && integer!= 5)
    return false
  end
	if integer == 2 || integer == 3 || integer == 5 || integer == 7
	  return true
	end
  limit = Math.sqrt(integer).to_i + 1
  (3..limit).step(2) {|possible_factor| return false if integer % possible_factor == 0}
  true
end

dividend = 600851475143
divisor = 3
product = 1
factors = []

while product < dividend/2 
  if dividend % divisor == 0 && is_prime(divisor)
    factors.push(divisor)
	product *= divisor
  end
  divisor += 2 
end

answer = factors.max
puts answer