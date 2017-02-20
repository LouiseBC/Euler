-- Euleur 5: Smallest Multiple --

function is_divisible(n, number)
	for i = 1, n do
		if (number % i > 0) then return false end
	end
	return true
end

function smallest_divisible(begin, upto)
	while (is_divisible(upto, begin) == false) do
		begin = begin + 1
	end
	return begin
end

print(smallest_divisible(1, 19))