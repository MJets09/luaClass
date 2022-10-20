function love.load()
circleSize = 25
circleSpeed = 200

myCircle = {
  x = circleSize,
  y = circleSize,
  isMovingRight = true,
  radius = circleSize,
  hSpeed = circleSpeed
  }
end


function love.update(dt)
  
  
  if myCircle.isMovingRight then --isMoving right true, if so run following code
     myCircle.isMovingRight = myCircle.x < (love.graphics.getWidth() - myCircle.radius) --Detect when the circle is hitting the edge not including the radious of our circle
  else
     myCircle.isMovingRight = not (myCircle.x > myCircle.radius) -- if circle is not moving right, detect if the circle is hitting the left of the width
  end
  
  if myCircle.isMovingRight then
    myCircle.x = myCircle.x + myCircle.hSpeed * dt -- if true circle moves right
  else
    myCircle.x = myCircle.x - myCircle.hSpeed * dt -- else if not true circle moves left
  end

function love.draw()
  
  love.graphics.circle("line", myCircle.x, myCircle.y, myCircle.radius)
  
end

end