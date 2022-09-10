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


--[[local randomNum, choiceNum, isCorrect

math.randomseed(os.time())

randomNum = math.random(10)
print(randomNum)

while (not isCorrect) do
  io.write("Guess a number through 1-10! ")
  choiceNum = io.read("*n")
  if (choiceNum == randomNum) then
  print("Correct")
  isCorrect = true
else
  print("Incorrect")
isCorrect = false

end
end]]

for i = 1, 10 do
  print(i)
  end