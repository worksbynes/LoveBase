Object = require("lib/classic")

local function resizeWindow(scalingFactor)
	love.window.setMode(scalingFactor * VIRTUAL_WIDTH, scalingFactor * VIRTUAL_HEIGHT)
end

local function displayFPS()
	love.graphics.setColor(0, 255, 0, 255)
	love.graphics.print("FPS: " .. tostring(love.timer.getFPS()), 10, 10)
end

function love.load()
	resizeWindow(SCALING_FACTOR)
end

function love.draw()
	displayFPS()
end

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end
