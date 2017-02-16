-- Euler 2: Even Fibonacci numbers --

fibSequence = {1, 2}

nextvalue = (fibSequence[#fibSequence]+fibSequence[#fibSequence-1])
while nextvalue < 4000000 do
	fibSequence[#fibSequence+1] = nextvalue
	nextvalue = (fibSequence[#fibSequence]+fibSequence[#fibSequence-1])
end

sum = 0
for i=1, #fibSequence do
	print(fibSequence[i])
	if fibSequence[i]%2 == 0 then sum = sum+fibSequence[i] end
end