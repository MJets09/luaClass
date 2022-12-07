Orange = Object.extend(Object)


function love.load()
  
myOrange = love.graphics.newImage("rsc/orange.png")
  
end

math.randomseed(os.time())

--Orange constructor -- used to create a new Orange
function Orange:new(img,x,y,speed)
    self.myImage = img
    self.x = x
    self.y = y
    self.speed = speed
    self.width = self.myImage:getWidth()
    self.height = self.myImage:getHeight()
end

function Orange:update(dt)
   self.y = self.y + self.speed * dt
end

function Orange:draw()
    love.graphics.draw(self.myImage, self.x, self.y, self.speed)
end