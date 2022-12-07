Rectangle = Object.extend(Object)

math.randomseed(os.time())
--Rectangle constructor -- used to create a new Rectangle
function Rectangle:new(x,y,width,height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.speed = 50
end

function Rectangle:update(dt)
    self.x = self.x + self.speed * dt
end

function Rectangle:draw()
    love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end