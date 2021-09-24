local colors = require("caerula.colors")

local M = {}

function M.setup(cfg)
    local theme = {}
    theme.colors = colors()

    local c = theme.colors

    cfg = {
        transparent = cfg.transparent
    }

    local function tbg()
        if cfg.transparent then
            return nil
        else
            return c.bg
        end
    end

    theme.base = {
        Comment = { fg = c.fg_dim },
        Directory = { fg = c.fg_bright },
        -- EndOfBuffer = { fg = c.fg_dim, bg = c.bg },
        EndOfBuffer = { fg = c.fg_dim, bg =  tbg() },
        ErrorMsg = { bg = c.red, fg = c.bg },
        VertSplit = { bg = nil, fg = c.fg_dim },
        SignColumn = { fg = c.fg_dim },

        Substitute = { bg = c.bg_bright },
        LineNr = { fg = c.fg_dim },
        CursorLineNr = { fg = c.fg_bright },

        NonText = { fg = c.fg_dim },
        -- Normal = { bg = c.bg, fg = c.fg },
        Normal = { bg =  tbg(), fg = c.fg },

        Pmenu = { bg = c.bg_bright, fg = c.fg },
        PmenuSel = { bg = c.fg_dim, fg = c.fg_bright },
        PmenuSbar = { bg = c.fg_dim},
        PmenuThumb  = { bg = c.fg},

        Visual = { bg = c.bg_bright },
        WarningMsg = { fg = c.red },
        WildMenu = { bg = c.bg_bright },

        Constant = { fg = c.cyan },
        String = { fg = c.pink },
        Character = { fg = c.pink },
        Number = { fg = c.red },

        Identifier = { fg = c.fg },
        Function   = { fg  = c.blue },
        Statement  = { fg = c.purple },

        Keyword = {fg = c.yellow},

        Label = { fg = c.pink },
        Operator = { fg = c.pink },

        PreProc = { fg = c.purple, gui = "bold" },
        Include = { fg = c.pink, gui = nil },

        Type = { fg = c.fg },

        Error = { bg = c.red_dim, fg = c.red },
        Todo  = { bg = c.yellow_dim, fg = c.yellow },

        LspReferenceText = { fg = c.fg_dim },

        LspDiagnosticsDefaultError = { fg = c.red },
        LspDiagnosticsDefaultWarning = { fg = c.yellow },
        LspDiagnosticsDefaultInformation = { fg = c.blue },
        LspDiagnosticsDefaultHint = { fg = c.fg_dim },

        LspDiagnosticsVirtualTextError  = { bg = c.red_dim, fg = c.red },
        LspDiagnosticsVirtualTextWarning = { fg = c.yellow, bg = c.yellow_dim },
    }

    theme.misc = {
        TSConstructor = { fg = c.blue },

        TSFuncBuiltin = { fg = c.green },

        TSParameter = { fg = c.fg },

        TSInclude = {fg = c.pink, gui = "italic"},
        TSConstant = {fg = c.fg_bright},
        TSKeyword = {fg = c.cyan},
        TSKeywordFunction = {fg = c.cyan},
        TSPunctDelimiter = { fg = c.fg },
        TSPunctBracket = { fg = c.fg },
        TSPunctSpecial = { fg = c.fg },
        TSVariable = { fg = c.fg, gui = "bold" },
        TSVariableBuiltin = { fg = c.fg },
        TSTagDelimiter = { fg = c.fg },

        NvimTreeRootFolder = {fg = c.fg_bright, gui = "bold"},
        NvimTreeFolderIcon = { fg = c.blue },
        NvimTreeOpenedFolderName = { gui = "bold" },
        NvimTreeNormal = { bg = c.bg_dim },
        NvimTreeEndOfBuffer = { bg = c.bg_dim },

        NvimTreeGitDirty = { fg = c.orange },
        NvimTreeGitStaged = { fg = c.green_dim },
        NvimTreeGitNew = { fg = c.green_dim },
        NvimTreeGitDeleted = { fg = c.red },

        NvimTreeSpecialFile = { fg = c.cyan, gui = "NONE" },

        illuminatedWord = { bg = c.bg_bright },
        Crates = { bg = c.red_dim, fg = c.red },
    }

    return theme
end

return M
