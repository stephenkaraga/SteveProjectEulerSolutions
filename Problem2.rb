=begin
Each new term in the Fibonacci sequence 
is generated by adding the previous two 
terms. By starting with 1 and 2, the first 
10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci 
sequence whose values do not exceed four 
million, find the sum of the even-valued terms
=end
def solution
	array_of_fibbonacci = [1, 2]
	while true
		if array_of_fibbonacci.last > 4000000
			array_of_fibbonacci.pop
			break
		end
		array_of_fibbonacci.push(array_of_fibbonacci.last + array_of_fibbonacci[array_of_fibbonacci.length - 2])
	end
	even_terms = []
	array_of_fibbonacci.each do |num|
		if num.even?
			even_terms.push(num)
		end
	end
	sum = even_terms.reduce(:+)
	puts sum
end
solution