function love.load()
  
  
  crate = love.graphics.newImage("rsc/crate.png")
  orange = love.graphics.newImage("rsc/orange.png")
  
  crX = 400
  crY = 500
  
end


function love.update(dt)
  
 --Crate movement
 if love.keyboard.isDown("right") then
    crX = crX + 5
    if crX > love.graphics.getWidth() - 100 then
       crX = 700
    end
  elseif love.keyboard.isDown("left") then
    crX = crX - 5
    print(crX)
    if crX < 0 then
       crX = 0
    end
  end

end



function love.draw()
  love.graphics.draw(crate, crX,crY)
  love.graphics.draw(orange)
end
