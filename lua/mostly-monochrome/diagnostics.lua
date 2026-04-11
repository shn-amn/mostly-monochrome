local lush = require('lush')

return function(p)
  return lush(function()
    ---@diagnostic disable: undefined-global
    return {
      WarningMsg { fg = p.yellow },
      ErrorMsg { fg = p.red },
      OkMsg { fg = p.green },
      ModeMsg { fg = p.white },
      MoreMsg { fg = p.white },

      DiagnosticError { fg = p.red },
      DiagnosticWarn { fg = p.yellow },
      DiagnosticInfo { fg = p.blue },
      DiagnosticHint { fg = p.blue },
      DiagnosticOk { fg = p.green },
      DiagnosticUnderlineError { sp = p.red, gui = 'underline' },
      DiagnosticUnderlineWarn { sp = p.yellow, gui = 'underline' },
      DiagnosticUnderlineInfo { sp = p.blue, gui = 'underline' },
      DiagnosticUnderlineHint { sp = p.blue, gui = 'underline' },
      DiagnosticUnderlineOk { sp = p.green, gui = 'underline' },
      DiagnosticVirtualTextError { fg = p.grey2 },
      DiagnosticVirtualTextWarn { fg = p.grey2 },
      DiagnosticVirtualTextInfo { fg = p.grey2 },
      DiagnosticVirtualTextHint { fg = p.grey2 },
      DiagnosticVirtualTextOk { fg = p.grey2 },
      DiagnosticVirtualLinesError { fg = p.red },
      DiagnosticVirtualLinesWarn { fg = p.yellow },
      DiagnosticVirtualLinesInfo { fg = p.blue },
      DiagnosticVirtualLinesHint { fg = p.blue },
      DiagnosticVirtualLinesOk { fg = p.green },
      DiagnosticSignError { fg = p.red },
      DiagnosticSignWarn { fg = p.yellow },
      DiagnosticSignInfo { fg = p.blue },
      DiagnosticSignHint { fg = p.blue },
      DiagnosticSignOk { fg = p.green },
    }
    ---@diagnostic enable: undefined-global
  end)
end
