
function love.load()
  Object = require "classic"
  require "orange"
  
  --timer
  remaining_time = 10
  gameover = false
  
  
  --Graphics
  crate = love.graphics.newImage("rsc/crate.png")
  orange = love.graphics.newImage("rsc/orange.png")
  
  crate = {}
    
  crate.image = love.graphics.newImage("rsc/crate.png")
  crate.x = 400
  crate.y = 500  
  crate.width = crate.image:getWidth()
  crate.height = crate.image:getHeight()
  
  print(crateWidth)
  
  
  --Create a Orange image that shows up randomly
  o1 = Orange(orange, math.random(1,700), 12, 300)
  --orange's height
  print(o1.height)
  
  --Score
  score = 0
  
end


function love.update(dt)
  
  
  local windowWidth = love.graphics.getWidth()
  
 --Crate movement
 if love.keyboard.isDown("right") then
    crate.x = crate.x + 5
    
    if crate.x > windowWidth - 100 then
      
       crate.x = 700
       
    end
    
  elseif love.keyboard.isDown("left") then
    
    crate.x = crate.x - 5

    if crate.x < 0 then
      
       crate.x = 0
       
    end
    
    remaining_time = remaining_time - 1 * dt
    
    if remaining_time <= 0 then
      
      gameover = true
      o1.x = 900
      o1.y = 900
      
    end
  
  end
  
  --Rain circles
    o1.y = o1.y + o1.speed * dt
    
    if o1.y > 601 then
      
       o1.x = math.random(1,700)
       o1.y = 12
       
    end

end


function love.draw()
  
  love.graphics.print("Score: " .. score, 600, 200)
  love.graphics.print("Timer: " .. remaining_time, 600, 150)
  love.graphics.print("Unable to figure out how to get timer to go down", 400, 100)
  love.graphics.print("as timer only goes down by 1 if left arrow key is pressed", 400, 112)
  love.graphics.print("Other than that, gameover screen works. Any suggestion to correct timer?", 300, 130)
  love.graphics.draw(crate.image,crate.x,crate.y)
  

  --Uses the orange draw function in the orange class
  o1:draw()
  
  if gameover then
    love.graphics.print("Gameover, your score is " .. score, 300,200)

  end
  
  if checkCollision(crate, o1) then
      score = score +1
      o1.x = math.random(1,800)
      o1.y = 12
  end
  
--o1.x = math.random(1,800)
  
  if score < 1 then
    crate.image = love.graphics.newImage("rsc/crate.png")
  elseif score < 2 then
    crate.image = love.graphics.newImage("rsc/crate1.png")
  elseif score < 3 then
    crate.image = love.graphics.newImage("rsc/crate2.png")
  elseif score < 4 then
    crate.image = love.graphics.newImage("rsc/crate3.png")
  else
    crate.image = love.graphics.newImage("rsc/fullCrate.png")
  end
  
  end
  
function checkCollision(a, b)

    local a_left = a.x
    local a_right = a.x + a.width
    local a_top = a.y
    local a_bottom = a.y + a.height

    local b_left = b.x
    local b_right = b.x + b.width
    local b_top = b.y
    local b_bottom = b.y + b.height

    --If Red's right side is further to the right than Blue's left side.
    if  a_right > b_left
    --and Red's left side is further to the left than Blue's right side.
    and a_left < b_right
    --and Red's bottom side is further to the bottom than Blue's top side.
    and a_bottom > b_top
    --and Red's top side is further to the top than Blue's bottom side then..
    and a_top < b_bottom then
        --There is collision!
        return true
    else
        --If one of these statements is false, return false.
        return false
    end

end