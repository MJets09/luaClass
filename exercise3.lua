--1. operators
--2. operand

--[[3.
print(19/10)
--One slash you get decimals
--4.
print(-19%10)
--Modulas returns remainder
--5.
print(19//10)
--Double slashes return integer
--6.
print(-19//10)
--Double slashes return integer

--7.
print(10 - 5 - 1 / 2 + 8 * 2 + 1)]]

--8. = in lua assigns while in math = is equals

--9. 4

--[[10.

local foo,bar
foo = 5
bar = 5
print(foo == bar)
print(foo > bar)
print(foo <= bar)
print(foo ~= bar)
print(foo < bar)
print(foo >= bar)]]

--11. Both results are true
--12. Either are true
--13. Produces the opposite value
--14. Put strings together, ..
--15. Number becomes a string
--16. Error
--17.  Expo, Multi, Div, Sub
--18
--[[local coconutsC, people
people = 5

io.write("How many coconuts are on this island? ")
coconutsC = io.read("*n")
leftOver = coconutsC//people
print("We would split " .. coconutsC//people .. " between us, with " .. leftOver .. " leftover.")]]

--Control

--1. Sequence, Selection, Repetition
--2. Sequence
--3.

--.4 Only have to write the test condition once, runs faster

--[[5.
local userScore

io.write("What did you get on your score on your test? " )
userScore = io.read("*n")
print(userScore)

if userScore >= 90 then
  print("A")
elseif userScore >=80 then
print("B")
elseif userScore >=70 then
print("C")
elseif userScore >=60 then
print("D")
else
print("F")
end]]

--6. math.random(1,10000)
--7. math.random(-1000, 10000)
--8. math.random()
--9. Get the same random generated numbers
--10. math.random(os.time())
--11. <
--12. foo == 'antimony'
--13. foo ~= 'boron'
--[[14.
local dueces, sum

dueces = 0
sum = 0

while dueces < 100 do
sum = sum + dueces
dueces = dueces + 2
end
print(sum)]]

--[[15. for i = 1, 10 do
  print('i ' .. i .. ' a skunk')
  i = i +1
end]]

--16.
for i = 100, 0, -7 do
    print(i)
end