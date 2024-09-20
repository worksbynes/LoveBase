local TitleScreenState = BaseState:extend()

function TitleScreenState:new() end

function TitleScreenState:update(dt) end

function TitleScreenState:render()
	love.graphics.printf("Hello World!", 0, 64, VIRTUAL_WIDTH, "center")
end

return TitleScreenState
