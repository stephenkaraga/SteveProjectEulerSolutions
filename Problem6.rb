=begin

The sum of the squares of the first ten natural numbers is,
12 + 22 + ... + 102 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)2 = 552 = 3025

Hence the difference between the sum of the squares of the 
first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one 
hundred natural numbers and the square of the sum.	

=end
def sum_of_the_squares(array)
  array.map! {|element| element**2}.reduce(:+)
end

def square_of_the_sums(array)
  array.reduce(:+)**2
end

first_hundred = (1..100).to_a

difference = square_of_the_sums(first_hundred) - sum_of_the_squares(first_hundred) 
puts difference