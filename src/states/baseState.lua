--[[

    -- BaseState Class --

    StateMachine requires each State have a set of four "interface" 
    methods that it can reliably call, so by inheriting 
    from this base state, our State classes will all have
    at least empty versions of these methods even if we don't 
    define them ourselves in the actual classes.
]]

local BaseState = Object:extend()

function BaseState:new() end
function BaseState:enter() end
function BaseState:exit() end
function BaseState:update(dt) end
function BaseState:render() end

return BaseState
