--[[Write a program where a filled circle moves horizontally at a speed of 30 pixels per second starting from the screen’s upper left. Place a title for the program somewhere on the screen so it doesn’t get in the way of the motion.

 function love.load()
   circleX= 100
   circleY = 300
   circleSpeed = 100
   circleRad = 25
  end 
 
 function love.update(dt)
   
    circleX = circleX + circleSpeed * dt
  
  end
  
  
  function love.draw()
    
     love.graphics.circle("fill", circleX, circleY, circleRad)

  end 
  
  ]]
  
--[[Same as above except the circle moves vertically starting from the screen’s upper left.

 function love.load()
   circleX= 25
   circleY = 100
   circleSpeed = 100
   circleRad = 25
  end 
 
 function love.update(dt)
   
    circleY = circleY + circleSpeed * dt
    
    if circleY > love.graphics.getHeight() - circleRad then
      circleY = 0
    end
    
  end
  
  
  function love.draw()
    
     love.graphics.circle("fill", circleX, circleY, circleRad)

end
]]

--[[Same as above except the circle moves horizontally starting from the screen’s lower right

 function love.load()
   circleX= 25
   circleY = 575
   circleSpeed = 100
   circleRad = 25
   print(love.graphics.getHeight())
  end 
 
 function love.update(dt)
   
    circleX = circleX + circleSpeed * dt
    
    if circleX > love.graphics.getHeight() - circleRad then
      circleX = 0
    end
    
  end
  
  
  function love.draw()
    
     love.graphics.circle("fill", circleX, circleY, circleRad)

end]]

--[[Same as above except the circle moves vertically starting from the screen’s lower right.

 function love.load()
   circleX= 775
   circleY = 575
   circleSpeed = 100
   circleRad = 25
   print(love.graphics.getWidth())
  end 
 
 function love.update(dt)
   
    circleY = circleY - circleSpeed * dt
    
    if circleY > love.graphics.getHeight() - circleRad then
      circleY = 575
    end
    
  end
  
  
  function love.draw()
    
     love.graphics.circle("fill", circleX, circleY, circleRad)

end]]


--[[Write a program where an outlined circle moves diagonally at a speed of 21 pixels per second in both dimensions starting from the screen’s upper left.

 function love.load()
   circleX= 25
   circleY = 25
   circleSpeed = 21
   circleRad = 25
   print(love.graphics.getWidth())
   
   shoeBrand = {"nike", "adidas", "jordan"}
   
   print(shoeBrand)
  end 
 
 function love.update(dt)
   
    circleX = circleX + circleSpeed * dt
    
    if circleX > love.graphics.getHeight() - circleRad then
      circleX = 75
      circleY = 75
    end
    
  end
  
  
  function love.draw()
    for i= 1, #shoeBrand do
      love.graphics.print(shoeBrand[i], 400, 300 + 10 * i)
    end
    love.graphics.circle("line", circleX, circleY, circleRad)

end]]

function love.load()
  x = 100
  speeD = 5
  rad = 10
end


function love.update(dt)
  x = x + (speeD * dt)
  speeD = speeD + 1.05
  rad = rad + 10 * dt--We cause this tuning, changing things untill you get the behavior you want
end


function love.draw()
  love.graphics.circle("line", x, 50,rad)
end  