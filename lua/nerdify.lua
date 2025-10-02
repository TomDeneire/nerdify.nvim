local tables = require("lua.nerdify.tables")

---@class Config
---@field opt string Your config option
local config = {
    opt = "Hello!",
}

---@class MyModule
local M = {}

---@type Config
M.config = config

---@param args Config?
-- you can define your setup function here. Usually configurations can be merged, accepting outside params and
-- you can also put some validation here for those.
M.setup = function(args)
    M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

local function make_replacer(map)
    return function(input, spacing)
        local out = {}
        for i = 1, #input do
            local ch = input:sub(i, i)
            ch = ch:lower()
            table.insert(out, map[ch] or ch)
        end
        local sep = ""
        if spacing == nil then spacing = 0 end
        if spacing > 0 then
            sep = string.rep(" ", spacing)
        end
        return table.concat(out, sep)
    end
end

M.style = function(flavour, input, spacing)
    local replacer
    if flavour == "circles" then
        replacer = make_replacer(tables.circles())
    elseif flavour == "circles_outline" then
        replacer = make_replacer(tables.circles_outline())
    elseif flavour == "box" then
        replacer = make_replacer(tables.box())
    elseif flavour == "box_outline" then
        replacer = make_replacer(tables.box_outline())
    elseif flavour == "numeric" then
        replacer = make_replacer(tables.numeric())
    elseif flavour == "numeric_box_multiple" then
        replacer = make_replacer(tables.numeric_box_multiple())
    elseif flavour == "numeric_box_multiple_outline" then
        replacer = make_replacer(tables.numeric_box_multiple_outline())
    else
        return input
    end
    return replacer(input, spacing)
end

return M
