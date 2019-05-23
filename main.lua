local function main()--Levi Harbin, integer list that returns some information

end
main()
charArrayOfUserInput = {}
charArrayOfListValues = {}
startIndex = 0
endIndex = 0
temp = ""
listValueArraySize = ""




----------------------------------------------------------------------------
print('Enter number of integers followed by the integer values:')
local number = io.read()


number:gsub(".",function(c) table.insert(charArrayOfUserInput,c) end)--break the input into sub characters

--get the end of the first term which deems size of list
startIndex=1
while(string.byte(charArrayOfUserInput[startIndex]) == 32)do
startIndex = startIndex+1
end



-- converts the char value to ascii and then back to char to check for spaces
current = startIndex
flag = false
while (flag == false)do
  if(string.byte(charArrayOfUserInput[current]) ~= 32)then
  listValueArraySize = listValueArraySize..charArrayOfUserInput[current]
  current = current+1 
  else
  endIndex = current
  flag = true
  end
end









-----------------------------------------------------------------------------------
print("The list:")
--same loop as above to grab start value, but grabs each element and puts into charArrayOfListValues
a = 1
for current = endIndex+1, table.getn(charArrayOfUserInput)do
  if(string.byte(charArrayOfUserInput[current]) ~= 32)then
  temp = temp..charArrayOfUserInput[current] 
  else
  charArrayOfListValues[a] = temp
  temp = ""
  a = a+1
  end
end
charArrayOfListValues[a] = temp



for a = 1, table.getn(charArrayOfListValues)do
io.write(charArrayOfListValues[a]," ")
end
print("")
















-----------------------------------------------------------------------------------
print("The average:")


temp = 0
for a = 1, table.getn(charArrayOfListValues)do
temp = temp+charArrayOfListValues[a]
end
avg = temp/table.getn(charArrayOfListValues)
print(string.format("%.2f",avg))




-----------------------------------------------------------------------------------
print("Number of values greater than average:")
--loop through each value of listarray and compare to average, if greater than, increment counter

temp = 0
for a = 1, table.getn(charArrayOfListValues)do
if(string.byte(charArrayOfListValues[a])>string.byte(avg))then
temp = temp+1
end
end


print(temp)





















