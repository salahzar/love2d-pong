-- adattato da https://love2d.org/forums/viewtopic.php?t=3885
-- 
-- Aggiunge la pallina
-- 
function love.load()
    screen_width = 500
    screen_height = 300

    paddle_1_width = 20
    paddle_1_height = 70
    paddle_1_x = 0
    paddle_1_y = (screen_height / 2) -  (paddle_1_height / 2)
    paddle_1_speed = 400

    -- NEW
    ball_width = 20
    ball_height = 20
    ball_x = (screen_width / 2) - (ball_width / 2)
    ball_y = (screen_height / 2) - (ball_height / 2)
    --

    love.window.setTitle('PONG!')
    love.window.setMode(screen_width, screen_height)
end

function love.update(dt)
    if love.keyboard.isDown('w') then
        paddle_1_y = paddle_1_y - (paddle_1_speed * dt)
    end
    if love.keyboard.isDown('s') then
        paddle_1_y = paddle_1_y + (paddle_1_speed * dt)
    end

    if paddle_1_y < 0 then
        paddle_1_y = 0
    elseif (paddle_1_y + paddle_1_height) > screen_height then
        paddle_1_y = screen_height - paddle_1_height
    end
end

function love.draw()
    love.graphics.rectangle('fill', paddle_1_x, paddle_1_y, paddle_1_width, paddle_1_height)
    -- NEW
    love.graphics.rectangle('fill', ball_x, ball_y, ball_width, ball_height)
    --
end
