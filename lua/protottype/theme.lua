local colors = require("protottype.colors")

local M = {}

function M.setup()
    local theme = {}
    theme.colors = colors()

    local c = theme.colors

    theme.base = {
        Comment = { fg = c.fg_dim },
        Directory = { fg = c.fg_bright },
        EndOfBuffer = { fg = c.fg_dim, bg = c.bg },
        ErrorMsg = { bg = c.red, fg = c.bg },
        VertSplit = { bg = nil, fg = c.fg_dim },
        SignColumn = { fg = c.fg_dim },

        Substitute = { bg = c.bg_bright },
        LineNr = { fg = c.fg_dim },
        CursorLineNr = { fg = c.fg_bright },

        NonText = { fg = c.fg_dim },
        Normal = { bg = c.bg, fg = c.fg },

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
        Number = { fg = c.orange },

        Identifier = { fg = c.fg },
        Function   = { fg = c.blue },

        Statement  = { fg = c.purple },

        Label = { fg = c.pink },
        Operator = { fg = c.fg },

        PreProc = { fg = c.fg, gui = "bold" },

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

        TSPunctDelimiter = { fg = c.fg },
        TSPunctBracket = { fg = c.fg },
        TSPunctSpecial = { fg = c.fg },
        TSVariable = { gui = "bold" },
        TSVariableBuiltin = { fg = c.fg },
        TSTagDelimiter = { fg = c.fg },

        NvimTreeRootFolder = {fg = c.fg_bright, gui = "bold"},
        NvimTreeFolderIcon = { fg = c.blue },
        NvimTreeNormal = { bg = c.bg_dim },
        NvimTreeEndOfBuffer = { bg = c.bg_dim },
        NvimTreeGitDirty = { fg = c.green_dim },
        NvimTreeGitNew = { fg = c.green_dim },
        NvimTreeGitDeleted = { fg = c.red },

        illuminatedWord = { bg = c.bg_bright },
    }

    return theme
end

return M
