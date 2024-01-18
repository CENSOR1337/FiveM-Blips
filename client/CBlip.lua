---@diagnostic disable-next-line: duplicate-set-field
function CBlip:constructor(...)
    self:init(...)

    local param = ({ ... })[1]

    cslib.typeCheck(param, "table")

    self.sprite = param.sprite
    self.color = param.color or 0
    self.scale = param.scale or 1.0
    self.shortRange = param.shortRange or true
    self.display = param.display or 4

    self:createBlip()
end

function CBlip:createBlip()
    local blip = AddBlipForCoord(self.position[1], self.position[2], self.position[3])

    SetBlipSprite(blip, self.sprite)
    SetBlipDisplay(blip, self.display)
    SetBlipScale(blip, self.scale)
    SetBlipColour(blip, self.color)
    SetBlipAsShortRange(blip, true)

    -- Add text above map blip
    if (self.label) then
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(self.label)
        EndTextCommandSetBlipName(blip)
    end

    self.blip = blip
end

---@diagnostic disable-next-line: duplicate-set-field
function CBlip:destructor()
    RemoveBlip(self.blip)
end
