-- adattato da https://love2d.org/forums/viewtopic.php?t=3885
-- 
-- Gestione della pallina
-- 
function initialize_ball()
    ball_width = 20
    ball_height = 20
    ball_x = (screen_width / 2) - (ball_width / 2)
    ball_y = (screen_height / 2) - (ball_height / 2)
    ball_speed_x = -200
    ball_speed_y = 200
    ball_color = {255, 214, 64}
end

function bounce_ball_if_it_hits_top_of_screen()
    if ball_y < 0 then
        ball_speed_y = math.abs(ball_speed_y)
    end
end

function bounce_ball_if_it_hits_bottom_of_screen()
    if (ball_y + ball_height) > screen_height  then
        ball_speed_y = -math.abs(ball_speed_y)
    end
end

function bounce_ball_if_it_hits_paddle_1()
    if ball_x <= paddle_1_width and
        (ball_y + ball_height) >= paddle_1_y and
        ball_y < (paddle_1_y + paddle_1_height)
    then
        ball_speed_x = math.abs(ball_speed_x)
    end
end

function bounce_ball_if_it_hits_paddle_2()
    if (ball_x + ball_width) >= (screen_width - paddle_2_width) and
        (ball_y + ball_height) >= paddle_2_y and
        ball_y < (paddle_2_y + paddle_2_height)
    then
        ball_speed_x = -math.abs(ball_speed_x)
    end
end

function reset_ball_if_offscreen()
    if ball_x + ball_width < 0 or ball_x > screen_width then
        initialize_ball()
    end
end

function update_ball(dt)
    ball_x = ball_x + (ball_speed_x * dt)
    ball_y = ball_y + (ball_speed_y * dt)
end

function draw_ball()
    love.graphics.setColor(ball_color)
    love.graphics.rectangle('fill', ball_x, ball_y, ball_width, ball_height)
end
