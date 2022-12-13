
function love.load()
  Object = require "classic"
  require "zombies"
  
  
  --font
  --yeezyFont = love.graphics.newFont("rsc/yeezy.tff", 15)
  love.graphics.setNewFont("yeezy.ttf", 25)
  
  --timer
  remaining_time = 13
  gameover = false
  
  
  --Graphics
  zombie = love.graphics.newImage("rsc/zombie.png")
  background = love.graphics.newImage("rsc/background.png")
  
  player = {}
  
  player.image = love.graphics.newImage("rsc/right.png")
  player.x = 400
  player.y = 500  
  player.width = player.image:getWidth()
  player.height = player.image:getHeight()
  
  
  --Create a zombie that shows up randomly
  zomb = zom(zombie, math.random(1,700), 12, 200)
  --orange's height
  
  --Score
  score = 0
  
  --Sound
  swordSwing = love.audio.newSource('rsc/sword.mp3', 'static')
  death = love.audio.newSource('rsc/death.mp3', 'static')
  mystery = love.audio.newSource('rsc/mystery.mp3', 'static')
end


function love.update(dt)
  
  mystery:play()
  
  if gameover then
    return
  end
  
  local windowWidth = love.graphics.getWidth()
  
 --Crate movement
 if love.keyboard.isDown("right") then
    player.x = player.x + 5
    player.image = love.graphics.newImage("rsc/right.png")
    
    if player.x > windowWidth - 100 then
      
       player.x = 700
       
    end
    
  elseif love.keyboard.isDown("left") then
    
    player.x = player.x - 5
    player.image = love.graphics.newImage("rsc/left.png")

    if player.x < 0 then
      
       player.x = 0
       
    end
    
  elseif love.keyboard.isDown("up") then
    
    player.y = player.y - 5
    
  elseif love.keyboard.isDown("down") then
    
    player.y = player.y + 5
  
  elseif love.keyboard.isDown("space") then
  
  if player.x > 400 then
    
  player.image = love.graphics.newImage("rsc/attackRight.png")
  swordSwing:play()
  print(player.image)
  
  elseif player.x < 400 then

  player.image = love.graphics.newImage("rsc/attackLeft.png")
  swordSwing:play()
  
 end 
  
end

remaining_time = remaining_time - 1 * dt
    
    if remaining_time <= 0 then
      
      gameover = true
      
    end
  
  --Rain zombies
    zomb.y = zomb.y + zomb.speed * dt
    
    if zomb.y > 601 then
      
       zomb.x = math.random(1,700)
       zomb.y = 12
       score = score -1
       
    end

end


function love.draw()
  
  love.graphics.draw(background, 1,1)
  love.graphics.draw(player.image,player.x,player.y)
  love.graphics.print("Score: " .. score, 600, 200)
  love.graphics.print("Timer: " .. remaining_time, 600, 150)
  
  
  --Uses the orange draw function in the orange class
  zomb:draw()
  
  if gameover then
    love.graphics.print("Gameover, your score is " .. score,200,200)
  end
  
  if checkCollision(player, zomb) then
      score = score +1
      zomb.x = math.random(1,800)
      zomb.y = 12
      death:play()
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