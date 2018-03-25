-- adattato da https://love2d.org/forums/viewtopic.php?t=3885
-- 
-- Paletta di sinistra
-- 
function initialize_paddle_1()
    paddle_1_width = 20
    paddle_1_height = 70
    paddle_1_x = 0
    paddle_1_y = (screen_height / 2) -  (paddle_1_height / 2)
    paddle_1_speed = 400
    paddle_1_color = {255, 135, 64}
end

function update_paddle_1(dt)
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

function draw_paddle_1()
    love.graphics.setColor(paddle_1_color)
    love.graphics.rectangle('fill', paddle_1_x, paddle_1_y, paddle_1_width, paddle_1_height)
end
