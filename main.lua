Object = require("lib/classic")

local windowWidth = VIRTUAL_WIDTH
local windowHeight = VIRTUAL_HEIGHT

local function resizeWindow(scalingFactor)
	windowWidth = scalingFactor * VIRTUAL_WIDTH
	windowHeight = scalingFactor * VIRTUAL_HEIGHT
	love.window.setMode(windowWidth, windowHeight)
end

local function displayFPS()
	love.graphics.setColor(0, 255, 0, 255)
	love.graphics.print("FPS: " .. tostring(love.timer.getFPS()), 10, 10)
end

function love.load()
	resizeWindow(SCALING_FACTOR)
	love.graphics.setDefaultFilter("nearest", "nearest")
end

function love.update(dt)
	--TODO:
end

function love.draw()
	displayFPS()
end

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end
