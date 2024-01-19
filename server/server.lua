local function addBlip(param)
    cslib.typeCheck(param, "table")

    local blipInstance = CBlip:new(param)

    return {
        destroy = function()
            blipInstance:destroy()
        end,
    }
end

local function removeBlip(blipObject)
    cslib.typeCheck(blipObject, "table")
    cslib.typeCheck(blipObject.destroy, "table", "function")

    blipObject.destroy()
end

exports("addBlip", addBlip)
exports("removeBlip", removeBlip)
