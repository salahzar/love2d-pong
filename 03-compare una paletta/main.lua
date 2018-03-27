-- adattato da https://love2d.org/forums/viewtopic.php?t=3885
-- 
-- La paletta sinistra
-- 
function love.load()
    screen_width = 500
    screen_height = 300

    -- NEW
    paddle_1_width = 20
    paddle_1_height = 70
    paddle_1_x = 0
    paddle_1_y = (screen_height / 2) -  (paddle_1_height / 2)
    --

    love.window.setTitle('PONG!')
    love.window.setMode(screen_width, screen_height)
    
end

function love.update(dt)
end

function love.draw()
  
  love.graphics.rectangle('fill', paddle_1_x, paddle_1_y, paddle_1_width, paddle_1_height)
end
