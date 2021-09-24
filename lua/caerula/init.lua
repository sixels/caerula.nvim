local utils = require("caerula.utils")
local theme = require("caerula.theme")

local function set(cfg)
    utils.set_theme(theme.setup(cfg))
end

return {set = set}
