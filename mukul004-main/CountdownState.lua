CountdownState = Class{__includes = BaseState}

COUNTDOWN_TIME = 0.75

function CountdownState:init()
    self.count = 3
    self.timer = 0
    
end

function CountdownState:update(dt)
    self.timer = self.timer + dt

    if self.timer > COUNTDOWN_TIME then
        self.timer = self.timer % COUNTDOWN_TIME
        self.count = self.count - 1

        if self.count == 0 then
            gStateMachine:change('play')
        end

    end
    
end

function CountdownState:render()
    love.graphics.setFont(hugeFont)
    love.graphics.printf(tostring(self.count), 0, 120, VIRTUAL_WIDTH, 'center')
    
end
--[[
    Error

states/CountdownState.lua:28: attempt to index local 'self' (a nil value)


Traceback

[love "callbacks.lua"]:228: in function 'handler'
states/CountdownState.lua:28: in function 'render'
StateMachine.lua:30: in function 'render'
main.lua:129: in function 'draw'
[love "callbacks.lua"]:168: in function <[love "callbacks.lua"]:144>
[C]: in function 'xpcall'
]]

--[[
    Error

states/PlayState.lua:60: attempt to index local 'self' (a nil value)


Traceback

[love "callbacks.lua"]:228: in function 'handler'
states/PlayState.lua:60: in function 'render'
StateMachine.lua:30: in function 'render'
main.lua:129: in function 'draw'
[love "callbacks.lua"]:168: in function <[love "callbacks.lua"]:144>
[C]: in function 'xpcall'
]]