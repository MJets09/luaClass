--[[function enabledDrawCircle()
  isDraw = true
end


function love.load()
  tick = require "tick"
  isDraw = false
  drawRec = false
  tick.delay(enabledDrawCircle, 2)
  tick.delay(function() drawRec = true end, 3)
  tick.recur(function() isDraw = not isDraw end, 1) -- toggle isDraw
end


function love.update(dt)
  
 tick.update(dt)
 
end 
  
  
 function love.draw()
  if drawRec then
  love.graphics.rectangle("line", 100,100,200,100)
  end
   
  if isDraw then
     love.graphics.circle("fill", 400,400,50)
  end
    
  end

end]]

math.randomseed(os.time())

--[[function love.load()
    Object = require "classic"
    --Don't forget to load the file
    require "rectangle"

    r1 = Rectangle(math.random(1,300),math.random(1,300),math.random(1,300),math.random(1,300))
    r2 = Rectangle(math.random(1,300),math.random(1,300),math.random(1,300),math.random(1,300))
    print(r1.test, r2.test)
    
end



function love.update(dt)
    r1:update(dt)
    r2.update(r2, dt) --same thing as line 52
end

function love.draw()
    r1:draw()
    r2:draw()
end]]


function love.load()
x = 30
y = 30


stages = {"forest", "ice cavern", "plains"}
print(stages)
end



function love.update(dt)
  
if love.keyboard.isDown("up") then
  y = y - 1
elseif love.keyboard.isDown("down") then
  y = y + 1
elseif love.keyboard.isDown("right") then
  x = x + 1
elseif love.keyboard.isDown("left") then
  x = x - 1
end

end

function love.draw()
  love.graphics.rectangle("line", x,y,200,100)
  for i = 1, #stages do
    love.graphics.print(stages[i], 400, 300 + 10 * i)
  end
end
