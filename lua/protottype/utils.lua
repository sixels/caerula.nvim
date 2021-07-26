local utils = {}

local function highlight(group, color)
    local gui = color.gui and "gui=" .. color.gui or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"

    local hi = "hi " .. group .. " " .. gui.. " " .. fg .. " " .. bg .. " "
    vim.cmd(hi)
end

local function render(rules)
    for group, colors in pairs(rules) do
        highlight(group, colors)
    end
end

function utils.set_theme(theme)
    vim.cmd("hi clear")

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "protottype"

    -- render base theme
    render(theme.base)

    -- render other rules
    vim.defer_fn(function()
        render(theme.misc)
    end, 0)
end

return utils
