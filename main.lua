Object = require("lib/classic")
Push = require("lib/push")
BaseState = require("src/states/baseState")
StateMachine = require("src/stateMachine")
TitleScreenState = require("src/states/titleScreenState")

local function displayFPS()
	love.graphics.setColor(0, 255, 0, 255)
	love.graphics.print("FPS: " .. tostring(love.timer.getFPS()), 10, 10)
end

function love.load()
	love.graphics.setDefaultFilter("nearest", "nearest")
	gStateMachine = StateMachine({
		["title"] = function()
			return TitleScreenState()
		end,
	})
	gStateMachine:change("title")

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
	gStateMachine:render()
	displayFPS()
	Push:finish()
end

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end
