=begin

2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?

=end

a = 2**1000
sum_of_digits = a.to_s.split("").map! {|digit| digit.to_i}.reduce(:+)

puts sum_of_digits