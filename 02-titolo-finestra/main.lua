-- adattato da https://love2d.org/forums/viewtopic.php?t=3885
-- 
-- Aggiungo titolo e dimensioni finestra
-- 
function love.load()
    -- NEW
    screen_width = 500
    screen_height = 300

    love.window.setTitle('PONG!')
    love.window.setMode(screen_width, screen_height)
    --
end

function love.update(dt)
end

function love.draw()
end
