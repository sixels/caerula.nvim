local hsl = require("protottype.utils").hsl

local function colors()
    local c = {
        bg = "#0F161F",
        bg_dim = "#0C1118",
        bg_bright = "#1F2D3D",

        fg = "#CAD3DD",
        fg_dim = "#384657",
        fg_bright = "#E7EDF3",

        blue = "#7FA0F6",
        cyan = "#6DCBF8",

        green = "#82DFC4",
        green_dim = "#269273",

        orange = "#DF8068",
        purple = "#AD72E3",
        pink = "#FAA8F0",

        yellow = "#E2C240",
        yellow_dim = "#3A3009",
        red = "#D04E52",
        red_dim = "#340E0F",
    }

    return c
end

return colors
