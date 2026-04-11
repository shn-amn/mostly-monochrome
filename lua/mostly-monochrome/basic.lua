local lush = require('lush')

return function(p)
  return lush(function()
    ---@diagnostic disable: undefined-global
    return {
      Normal { bg = p.black, fg = p.grey9 },
      Comment { fg = p.grey4, gui = '' },
      Statement { fg = p.grey7, gui = 'bold' },
      Delimiter { fg = p.grey5 },
      Special { fg = p.white },
      Function { fg = p.white },
      Operator { fg = p.white },
      Identifier { fg = p.grey7 },
      Type { fg = p.white },
      Number { fg = p.red },
      String { fg = p.red },
      Question { fg = p.white },
      Directory { fg = p.white, gui = 'bold' },
      LineNr { fg = p.grey(25) },
      CursorLine { bg = p.grey1 },
      CursorLineSign { bg = p.grey1 },
      CursorLineNr { bg = p.grey1, fg = p.white, gui = 'bold' },
      Visual { bg = p.grey2 },
      NonText { fg = p.grey2 },
      Title { gui = 'bold' },
      Tag { bg = p.grey1 },

      Cursor { fg = p.black, bg = p.grey8 },
      Search { bg = p.grey3 },
      CurSearch { fg = p.black, bg = p.grey7 },
      IncSearch { CurSearch },

      Added { fg = p.green },
      Changed { fg = p.blue },
      Removed { fg = p.red },
      -- TODO: DiffAdd, DiffChange, DiffDelete, etc.

    }
    ---@diagnostic enable: undefined-global
  end)
end
