=begin
	
 A palindromic number reads the same both ways. 
 The largest palindrome made from the product of 
 two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers. 
	
=end
def is_palindrome integer
  array_of_numbers = integer.to_s.split("")
  array_of_numbers_reversed = array_of_numbers.reverse
  if array_of_numbers == array_of_numbers_reversed
    return true
  end
  false
end

product = 1
array_of_palindromes = []
three_digit_numbers = (100..999).to_a
three_digit_numbers2 = (100..999).to_a

for num in three_digit_numbers
  for number in three_digit_numbers2
	product = num * number
	if is_palindrome(product)
	  array_of_palindromes.push(product)
	end
  end
end
answer = array_of_palindromes.max
puts answer