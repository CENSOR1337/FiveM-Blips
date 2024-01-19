## Requirements
 - [@censor1337/FiveM-CS_Lib](https://github.com/CENSOR1337/FiveM-CS_Lib)

## Example 
```lua
local instance = exports["censor_blips"]:addBlip({
    label = ("<font face='%s'>%s</font>"):format("font4thai", "โหดจัด"),
    position = vector3(-1032.5858, -2901.3723, 13.9543),
    sprite = 1,
    color = 0,
    scale = 1.0,
})

Citizen.SetTimeout(5000, function()
    exports["censor_blips"]:removeBlip(instance)
    -- Can also use 
    -- instance.destroy()
end)

```