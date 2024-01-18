local Blip = {}
Blip.__index = Blip
Blip.instances = {}

---@diagnostic disable-next-line: duplicate-set-field
function CBlip:constructor(...)
    self:init(...)
end

---@diagnostic disable-next-line: duplicate-set-field
function CBlip:destructor()
end
