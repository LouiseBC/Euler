-- Euler 22: --

local file = assert(io.open("names.txt", "r"), "Could not open file")
local contents = file:read("*all")

local names = {}
for name in string.gmatch(contents, "%u+") do
	table.insert(names, name)
end
table.sort(names)

local sum = 0
for i, v in ipairs(names) do
	local score = 0
	for c in string.gmatch(v, ".") do
		sum = sum + ((string.byte(c) - string.byte('A') + 1) * i)
	end
end

print(sum)

io.close(file)