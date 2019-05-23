local function main()
end
main()
io.write('Enter a string:')
local word = io.read()


--Lua has a provided function string.reverse that reverses a string
if (word == string.reverse(word))then
io.write('"',word,'"',' is a palindrome','\n')
else
io.write('"',word,'"',' is not a palindrome','\n')
end
--simple if else for whether or not the string is a palindrome