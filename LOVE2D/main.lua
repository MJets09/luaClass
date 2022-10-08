require("example")
--[[function love.draw()
 love.graphics.setColor(255,0,0)
 love.graphics.print("The world is Yours!!!") 
 love.graphics.circle("line", 200, 200, 100)
 love.graphics.circle("line", 300, 200, 100)
 love.graphics.circle("line", 400, 200, 100)
 love.graphics.circle("line", 500, 200, 100)
 love.graphics.setColor(0,255,0)
 love.graphics.rectangle("line", 0,0, 800, 600)
end]]


--[[function love.load()
  x = 100
  move = true
  artist = {"nas","jay","ye"}
  rect = {}
  rect.width = 200
  rect.x = 400
  rect.y = 200
  rect.height = 100
  rect.speed = 200
end

function love.draw()
    love.graphics.rectangle("line", x, 50, 200, 150)
    for i, ani in ipairs(artist) do
      love.graphics.print(ani,300, 200 + 10 * i)
    end
    love.graphics.rectangle("fill", rect.x, rect.y, rect.width, rect.height)
end


function love.update(dt)
if love.keyboard.isDown("right") then
    rect.x = rect.x + rect.speed * dt
  elseif love.keyboard.isDown("left") then
    rect.x = rect.x - rect.speed * dt
    
end
end]]

--[[function love.load()
   circleSize = 30
   circleSpeed = 300
   
   circleX = 300
   circleY = 300
   
   isMovingRight = true
end



function love.update(dt)
  
if isMovingRight and circleX < (love.graphics.getWidth() - circleSize ) then
  isMovingRight = true
else if isMovingRight and circleX > (love.graphics.getWidth() - circleSize ) then
    isMovingRight = false
elseif not isMovingRight and circleX > (love.graphics.getWidth() + circleSize) then
isMovingRight = false
elseif not isMovingRight and circleX <= circleSize then
isMovingRight = true
end
end

if isMovingRight == true then
  circleX = circleX + circleSpeed * dt
  else 
  circleX = circleX - circleSpeed * dt
end

end

function love.draw()
 love.graphics.circle("line", circleX, circleY, circleSize) 
end]]

function createCircle(x,y,radius, hSpeed)
  local theCircle = {
    x = x_,
    y = y_,
    radius = radius_,
    hSpeed = hSpeed_,
    
    }
  return theCircle

end

function love.load()
 myCircle = createCircle(300,300,200,100)
end

function love.update()

end

function love.draw()
  
  end
