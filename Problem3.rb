=begin
	The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?	
=end
def isPrime integer
	#takes an integer as an argument and returns true if it is prime or false
	#if composite
	#the method is aimed at being efficient in order to process faster
	if integer < 2 || (integer.even? && integer != 2) || (integer.to_s.split("").last.to_i == 5 && integer!= 5)
	#save time by returning false for certain cases	
		return false
	end
	if integer == 2 || integer == 3 || integer == 5 || integer == 7
		# cover primes where the square root of the integer is less than 3
		return true
	end
	squareRootRounded = Math.sqrt(integer).to_i + 1
	#we use squareRoot as a limit for finding a prime factor
	(3..squareRootRounded).step(2) {|possible_factor| return false if integer % possible_factor == 0}
	#check odd numbers
	true
end

	dividend = 600851475143
	#we examine the number
	#it is odd, therefore it has no even factors
	#last digit is not 0 or 5 so no factors of 5
	#lets check 3 first
	divisor = 3
	product = 1
	factors = []
	while product < dividend/2 
		if dividend % divisor == 0 && isPrime(divisor)
			factors.push(divisor)
			product *= divisor
		end
		divisor += 2 #check all odd numbers since it has no even prime factors (2)
	end
	answer = factors.max
	
	puts answer
