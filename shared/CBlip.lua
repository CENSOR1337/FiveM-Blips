CBlip = cslib.syncedObject.new("c.blip")

function CBlip:init(params)
    self.label = params.label
    self.position = { params.position.x, params.position.y, params.position.z }
end
