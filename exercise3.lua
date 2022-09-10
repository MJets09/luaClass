--1. operators
--2. operand

--3.
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
print(10 - 5 - 1 / 2 + 8 * 2 + 1)

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



local numMonsters, msg

io.write('How many monsters are there? ')
numMonsters = io.read("*n")

if (numMonsters > 0) then
    msg = 'Way to go!!!'
    print(msg)
elseif (numMonsters > 2) then
    msg = 'Only a few left!'
    print(msg)
elseif (numMonsters > 5) then
    msg = 'Still more to go!'
    print(msg)
else
    msg = 'True spirit.'
    print(msg)
end

