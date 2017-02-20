-- Euler 4: Largest palindrome product --

function is_palindrome(n)
	local number = string.reverse(tostring(n))
	return (number == tostring(n))
end

function find_largest(digits)
	local max = 0
	for i = 1, digits do
		max = max*10 + 9
	end

	local palindromes = {}
	for i = 1, max do
		for j = 1, max do
			if (is_palindrome(i*j)) then table.insert(palindromes, (i*j)) end
		end
	end
	return math.max(unpack(palindromes))
end

print(find_largest(3))