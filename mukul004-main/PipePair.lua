PipePair = Class{}

local GAP_HEIGHT = 80

function PipePair:init(y)
    self.x = VIRTUAL_WIDTH
    self.y = y
    self.pipes = {
        ['upper'] = Pipe('top', self.y),
        ['lower'] = Pipe('bottom', self.y + PIPE_HEIGHT + GAP_HEIGHT)
    }
    self.remove = false
end

function PipePair:update(dt)
    self.x = self.x - PIPE_SPEED * dt
    self.pipes['lower'].x = self.x
    self.pipes['upper'].x = self.x    
end

function PipePair:render()
    for l, pipe in pairs(self.pipes) do
    pipe:render()
    end
end