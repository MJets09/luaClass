--[[
    Starter code for "Up the Mountain"
    CSCI 1011 Text game assignment
    Mithat Konar
--]]

-- constants needed in the program
local ENERBERRY_CALORIES = 10
local ZAPBERRY_CALORIES = 12

-- variables needed in the program
local rivotCalories = 42    --[[ the number of calories a rivot at the very
                                 start. ]]
local isEnerberry           --[[ a boolean used to store whether the rivot
                                 ate an enerberry or a zapberry. ]]

-- Let's do some housekeeping.
math.randomseed(os.time()) -- seed the random number generator

-- Let's begin!
-- The rivot climbs 100 meters, so it's time to eat.
-- Did the rivot eat an enerberry or zapberry (a 50/50 proposition)?
isEnerberry =  math.random(0, 1) == 1  -- half the time this will be true.

if isEnerberry then
    rivotCalories = rivotCalories + ENERBERRY_CALORIES
    print(rivotCalories)
else
    rivotCalories = rivotCalories - ZAPBERRY_CALORIES
    print(rivotCalories)
end
