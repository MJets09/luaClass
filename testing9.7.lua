--[[local myNum

io.write("What is your number?")

myNum = io.read("*n")

if myNum < 5 then
  print("Your number of " .. myNum .. " is smaller than 6")
else
  print("Your number of " .. myNum .. " is bigger than 6")
end]]

--[[local yourNum

io.write("Guess a number? ")

yourNum = io.read("*n")

if yourNum < 19 then
  print("Sorry buddy you cant drink yet")
elseif (yourNum == 20) then
print("Sorry buddy one more year")
else
print("Alright bro your old enough")

end]]


--[[local randomNum, choiceNum

math.randomseed(os.time())

io.write("Guess a number through 1-100! ")
randomNum = math.random(100)
choiceNum = io.read("*n")
print(randomNum)
if choiceNum == randomNum then
  print("Correct!")
else
  print("Guess again")
end]]

local i, sum

i = 1
sum = 0

while i <= 100 do
  sum = sum + 1
  i = i +1

end

  print(sum)