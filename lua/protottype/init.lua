local utils = require("protottype.utils")
local theme = require("protottype.theme")

local function set()
    utils.set_theme(theme.setup())
end

return {set = set}
