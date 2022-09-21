local enerBerries = 10
local zapBerries = 12
local rivotCal = 42
local isEBerries


print(isEBerries)


while rivotCal > 20 do
print("Climb")

math.randomseed(os.time())
isEBerries = math.random(0,1)

if isEBerries == 0 then
  --if this is not true, I would run this code
rivotCal = rivotCal + isEBerries
--I'll add 12 to my current rivotCal at 42 which becomes 52
print(rivotCal)
--Prints 52, so it would run the code again and add 12 again correct?
else
rivotCal = rivotCal - zapBerries
print(rivotCal)
end

end