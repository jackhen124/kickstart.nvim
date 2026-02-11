local M = {}

local colors = require 'jcolors.palette'

M.setup = function()
  return {
    -- all this was added by ai
    -- Editor
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.menu_bg },
    CursorLine = { bg = colors.cursorline },
    CursorLineNr = { fg = colors.cursor, bold = true },
    LineNr = { fg = colors.linenr },
    SignColumn = { bg = colors.bg },
    Visual = { bg = colors.visual },
    Search = { bg = colors.search, fg = colors.bg },
    StatusLine = { fg = colors.fg, bg = colors.statusline },
    VertSplit = { fg = colors.split },
    Pmenu = { fg = colors.fg, bg = colors.menu_bg },
    PmenuSel = { fg = colors.fg, bg = colors.menu_sel },
    Folded = { fg = colors.comment, bg = colors.fold },

    -- Syntax
    Comment = { fg = colors.comment, italic = true },
    Keyword = { fg = colors.keyword, bold = true },
    Function = { fg = colors.Function },
    String = { fg = colors.string },
    Constant = { fg = colors.constant },
    Type = { fg = colors.type },
    Number = { fg = colors.number },
    Boolean = { fg = colors.boolean },
    Operator = { fg = colors.operator },
    Identifier = { fg = colors.variable },

    -- Treesitter
    ['@keyword'] = { fg = colors.keyword, bold = true },
    ['@function'] = { fg = colors.Function },
    ['@string'] = { fg = colors.string },
    ['@constant'] = { fg = colors.constant },
    ['@type'] = { fg = colors.type },
    ['@number'] = { fg = colors.number },
    ['@boolean'] = { fg = colors.boolean },
    ['@operator'] = { fg = colors.operator },
    ['@variable'] = { fg = colors.variable },
    ['@comment'] = { fg = colors.comment, italic = true },

    -- Diagnostics
    DiagnosticError = { fg = colors.diag_error },
    DiagnosticWarn = { fg = colors.diag_warn },
    DiagnosticInfo = { fg = colors.diag_info },
    DiagnosticHint = { fg = colors.diag_hint },
  }
end

return M
