math.randomseed(os.time())
local enerBerries = 10
local zapBerries = 12
local rivotCal = math.random(34,50)
local isEBerries
local playerRivot
local playerName
local counter = 0
local i = 0



function greet()
  io.write("Welcome to the Tua Peaks, where the greatest Rivots have trained. Greetings trainer, what is your name? ")
  playerName = io.read()
  io.write("Welcome, " .. playerName .. " which Rivot would take the honor of climbing the peaks? ")
  playerRivot = io.read()
  print("Well then, " .. playerRivot .. ". Let us begin your training, we will test " .. playerRivot .. "'s strengh.")
  print("Every 100 meters " .. playerRivot .. " will have the chance to rest and recover their strengh. Let us see how relentess " .. playerRivot .. " is. ")
  print(playerRivot .. " has ascended the first 100 meters, and base on their energy tracker, they are at " ..rivotCal .. " calories and now is looking for food.")

  end
    
    
greet() 

 
while rivotCal > 25 do
  
isEBerries = math.random(0,1)


if isEBerries == 0 then
  rivotCal = rivotCal + enerBerries
  print(playerRivot .. " has ascended another 100 meters. " .. playerRivot .. " has acquired an enerberry, gaining some energy. They're currently sitting at " .. rivotCal .. " calories.")
  counter = i + i
  i = i + 100
else
  rivotCal = rivotCal - zapBerries
  print(playerRivot .. " has ascended another 100 meters. " .. playerRivot .. " has acquired an zapberry, they don't look so good. They're currently sitting at " .. rivotCal .. " calories.")
  counter = i + i
  i = i + 100
end


if rivotCal < 32 then
  print(playerRivot .. " would need to stop soon, his calories are getting low.")
end

end


if(counter > 1000) then
print(playerRivot .. " has ascended " .. counter .. " meters. Mighty impression")
elseif (counter < 500) then
print(playerRivot .. " has ascended " .. counter .. " meters. Not too shabby.")
elseif (counter < 300) then
print(playerRivot .. " has ascended " .. counter .. " meters. Not to far, we can always try again.")
end