=begin
A Pythagorean triplet is a set 
of three natural numbers, 
a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one 
Pythagorean triplet for 
which a + b + c = 1000.
Find the product abc.	
=end

_a = (1..999).to_a
_b = (1..999).to_a
_c = (1..999).to_a

answer = 1
for a in _a
  for b in _b
    for c in _c
	  if a + b + c == 1000 && a**2 + b**2 == c**2
		answer = a*b*c
		break
	  end
    end
  end
end
puts answer