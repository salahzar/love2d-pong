-- adattato da https://love2d.org/forums/viewtopic.php?t=3885
-- 
-- La pallina rimbalza sulle y (in verticale)
-- 
function love.load()
    screen_width = 500
    screen_height = 300

    paddle_1_width = 20
    paddle_1_height = 70
    paddle_1_x = 0
    paddle_1_y = (screen_height / 2) -  (paddle_1_height / 2)
    paddle_1_speed = 400

    ball_width = 20
    ball_height = 20
    ball_x = (screen_width / 2) - (ball_width / 2)
    ball_y = (screen_height / 2) - (ball_height / 2)
    ball_speed_x = -200
    ball_speed_y = 200

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

    -- NEW (math.abs(1) and math.abs(-1) are both equal to 1, math.abs(123) and math.abs(-123) are both equal to 123, etc.)
    if ball_y < 0 then
        ball_speed_y = math.abs(ball_speed_y)
    elseif (ball_y + ball_height) > screen_height  then
        ball_speed_y = -math.abs(ball_speed_y)
    end
    --

    ball_x = ball_x + (ball_speed_x * dt)
    ball_y = ball_y + (ball_speed_y * dt)
end

function love.draw()
    love.graphics.rectangle('fill', paddle_1_x, paddle_1_y, paddle_1_width, paddle_1_height)
    love.graphics.rectangle('fill', ball_x, ball_y, ball_width, ball_height)
end
