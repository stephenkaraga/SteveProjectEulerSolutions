=begin
	
 A palindromic number reads the same both ways. 
 The largest palindrome made from the product of 
 two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers. 
	
=end
def isPalindrome integer
	#accepts an integer and returns true if it is a palindrome
	#otherwise returns false
	arrayofNumbers = integer.to_s.split("")
	arrayofNumbersReversed = arrayofNumbers.reverse
	if arrayofNumbers == arrayofNumbersReversed
		return true
	end
	false
end
product = 1
arrayofPalindromes = []
threeDigitNumbers = (100..999).to_a
threeDigitNumbers2 = (100..999).to_a
for num in threeDigitNumbers
  for number in threeDigitNumbers2
	product = num * number
	if isPalindrome(product)
		arrayofPalindromes.push(product)
	end
  end
end
answer = arrayofPalindromes.max
puts answer