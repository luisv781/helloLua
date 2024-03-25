_G.love = require("love")

function love.load()
    love.graphics.setNewFont(48)
    love.graphics.setBackgroundColor(.8, .9, 1)
    x = 100
    y = 180
    rd = 16
end

function love.update(dt)
    if love.keyboard.isDown("w") then
        y = y - 4
    end
    if love.keyboard.isDown("s") then
        y = y + 4
    end
    if love.keyboard.isDown("a") then
        x = x - 4
    end
    if love.keyboard.isDown("d") then
        x = x + 4
    end
    if love.keyboard.isDown("q") then
        if rd > 0 then
            rd = rd - 2
        end
    end
    if love.keyboard.isDown("e") then
        if rd < 220 then
            rd = rd + 2
        end
    end
end

function love.draw()
    love.graphics.setColor(.35, .6, .95)
    love.graphics.print("Hello World!", 180, 60)
    love.graphics.setColor(.5, .7, 1)
    love.graphics.rectangle("fill", x, y, 440, 240, rd)
end