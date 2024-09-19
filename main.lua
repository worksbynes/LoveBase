Object = require("lib/classic")
Push = require("lib/push")

local function displayFPS()
	love.graphics.setColor(0, 255, 0, 255)
	love.graphics.print("FPS: " .. tostring(love.timer.getFPS()), 10, 10)
end

function love.load()
	love.graphics.setDefaultFilter("nearest", "nearest")
	Push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
		vsync = true,
		fullscreen = false,
		resizable = true,
	})
end

function love.resize(w, h)
	Push:resize(w, h)
end

function love.update(dt)
	--TODO:
end

function love.draw()
	Push:start()
	displayFPS()
	Push:finish()
end

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end
