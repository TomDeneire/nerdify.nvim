local M = {}

local style = require "style.tables"

local function make_replacer(map)
    return function(input, spacing)
        local out = {}
        for i = 1, #input do
            local ch = input:sub(i, i)
            ch = ch:lower()
            table.insert(out, map[ch] or ch)
        end
        local sep = ""
        -- todo: eventueel spacing = 0.5 (workaround)
        if spacing == nil then spacing = 0 end
        if spacing > 0 then
            sep = string.rep(" ", spacing)
        end
        return table.concat(out, sep)
    end
end



function M.style(flavour, input, spacing)
    local replacer
    if flavour == "circles" then
        replacer = make_replacer(style.circles())
    elseif flavour == "circles_outline" then
        replacer = make_replacer(style.circles_outline())
    else
        return input
    end
    return replacer(input, spacing)
end

-- test
print(M.style("circles", "hello world 1234"))
print(M.style("circles", "hello world 1234", 1))
print(M.style("circles_outline", "hello world 1234"))
print(M.style("circles_outline", "hello world 1234", 1))

return M
