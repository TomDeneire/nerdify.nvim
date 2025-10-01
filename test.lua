local fontasy = require("lua.fontasy")

-- test
local input = "abcdefghijklmnopqrstuvwxyz 0123456789 +-=#,.:"
local flavours = { "circles", "circles_outline", "box", "box_outline", "numeric", "numeric_box_multiple",
    "numeric_box_multiple_outline" }
local spacings = { 0, 1 }

for _, flavour in ipairs(flavours) do
    print("# " .. flavour)
    for _, spacing in ipairs(spacings) do
        print(fontasy.style(flavour, input, spacing))
    end
    print("\n")
end
