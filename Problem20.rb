=begin
n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!
=end
def factorial(positiveInteger)
	#recursive function for computing factorials
	if positiveInteger ==1
		return 1
	else
		return positiveInteger * factorial(positiveInteger - 1)
	end
end
factory = factorial(100)
sumofDigits = factory.to_s.split("").map! {|digit| digit.to_i}.reduce(:+)
puts sumofDigits