-- Euler 1: Multiples of 3 and 5 --

function find_multiples(max)
	sum = 0
	for i=1, max do
		if i%3 == 0 or i%5 == 0 then
			sum = sum + i
		end
	end
	return sum
end
