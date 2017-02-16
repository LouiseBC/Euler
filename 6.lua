-- Euler 6: Sum square difference --

function square(x)
	return x*x
end

sumOfSqr = 0
sum = 0

for i=1, 100, 2 do
	sumOfSqr = sumOfSqr + ( square(i) + square(i+1) )
	sum = sum + i + (i+1)
end

print(sumOfSqr .. '-' .. square(sum) .. '=' .. (square(sum)-sumOfSqr) )
