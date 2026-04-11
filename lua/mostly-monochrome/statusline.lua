local lush = require('lush')

return function(p)
  return lush(function()
    ---@diagnostic disable: undefined-global
    return {
      MiniStatuslineModeNormal { fg = p.white, bg = p.grey5, gui = 'bold' },
      MiniStatuslineModeInsert { fg = p.black, bg = p.grey8, gui = 'bold' },
      MiniStatuslineModeReplace { fg = p.grey1, bg = p.yellow, gui = 'bold' },
      MiniStatuslineModeVisual { fg = p.grey8, bg = p.grey2, gui = 'bold' },
      MiniStatuslineModeCommand { fg = p.grey9, bg = p.red, gui = 'bold' },
      MiniStatuslineModeOther { fg = p.black, bg = p.blue, gui = 'bold' },
    }
    ---@diagnostic enable: undefined-global
  end)
end
