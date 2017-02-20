-- Euler 14: Longest Collatz sequence --

function modify(n)
	return n % 2 == 0 and n/2 or n*3 + 1 
end

function sequenceLength(firstN)
	local length = 1 -- include first value
	while firstN > 1 do
		firstN = modify(firstN)
		length = length + 1
	end
	return length
end

function findMaxLength(maxStartNum)
	local max = 0
	local maxIndex = 1
	for i = 1, maxStartNum do
		local len = sequenceLength(i)
		if len > max then max = len; maxIndex = i end
	end
	return maxIndex
end
