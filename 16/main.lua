-- adattato da https://love2d.org/forums/viewtopic.php?t=3885
-- 
-- Struttura in diversi sorgenti
-- 
require 'background'
require 'ball'
require 'constants'
require 'paddle_1'
require 'paddle_2'
require 'pause'

function love.load()
    initialize_paddle_1()
    initialize_paddle_2()
    initialize_ball()

    state = 'play'

    love.window.setTitle('PONG!')
    love.window.setMode(screen_width, screen_height)
end

function love.update(dt)
    if state ~= 'play' then
        return
    end

    update_paddle_1(dt)
    update_paddle_2(dt)
    bounce_ball_if_it_hits_top_of_screen()
    bounce_ball_if_it_hits_bottom_of_screen()
    bounce_ball_if_it_hits_paddle_1()
    bounce_ball_if_it_hits_paddle_2()
    reset_ball_if_offscreen()
    update_ball(dt)
end

function love.draw()
    set_background()
    draw_paddle_1()
    draw_paddle_2()
    draw_ball()
    if state == 'pause' then
        draw_pause_overlay()
    end
end

function love.keypressed(key)
    if key == 'q' or key == 'escape' then
        love.event.push('quit')
    end

    if key == 'p' then
        if state == 'play' then
            state = 'pause'
        else
            state = 'play'
        end
    end
end
