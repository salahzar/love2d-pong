-- adattato da https://love2d.org/forums/viewtopic.php?t=3885
-- 
-- Paletta di destra
-- 
function initialize_paddle_2()
    paddle_2_width = 20
    paddle_2_height = 70
    paddle_2_x = screen_width - paddle_2_width
    paddle_2_y = (screen_height / 2) -  (paddle_2_height / 2)
    paddle_2_speed = 400
    paddle_2_color = {255, 135, 64}
end

function update_paddle_2(dt)
    if love.keyboard.isDown('up') then
        paddle_2_y = paddle_2_y - (paddle_2_speed * dt)
    end
    if love.keyboard.isDown('down') then
        paddle_2_y = paddle_2_y + (paddle_2_speed * dt)
    end

    if paddle_2_y < 0 then
        paddle_2_y = 0
    elseif (paddle_2_y + paddle_2_height) > screen_height then
        paddle_2_y = screen_height - paddle_2_height
    end
end

function draw_paddle_2()
    love.graphics.setColor(paddle_2_color)
    love.graphics.rectangle('fill', paddle_2_x, paddle_2_y, paddle_2_width, paddle_2_height)
end
