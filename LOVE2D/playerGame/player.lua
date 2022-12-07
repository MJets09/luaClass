--! file: player.lua
Player = Object:extend()

function Player:new()

end


function Player:new()
  self.image = love.graphics.newImage("kobemj.png")
  self.x = 300
  self.y = 20
  self.speed = 500
  self.width = self.image:getWidth()
end

doc = "yo"


function Player:update(dt)
  if love.keyboard.isDown("left") then
        self.x = self.x - self.speed * dt
        print(yo)
    elseif love.keyboard.isDown("right") then
        self.x = self.x + self.speed * dt
    end
    end 

function Player:draw()
  love.graphics.draw(self.image)
end
