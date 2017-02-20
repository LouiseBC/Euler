-- Euleur 5: Smallest Multiple --
-- It seems this problem is too large for lua (works up to n = 17, but I'm pretty sure this is correct --

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