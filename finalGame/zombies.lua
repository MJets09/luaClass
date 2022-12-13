zom = Object.extend(Object)


function love.load()

  
end

math.randomseed(os.time())

--Orange constructor -- used to create a new Orange
function zom:new(img,x,y,speed)
    self.myImage = img
    self.x = x
    self.y = y
    self.speed = speed
    self.width = self.myImage:getWidth()
    self.height = self.myImage:getHeight()
end

function zom:update(dt)
   self.y = self.y + self.speed * dt
end

function zom:draw()
    love.graphics.draw(self.myImage, self.x, self.y, self.speed)
end