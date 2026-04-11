local lush = require('lush')

return function(p)
  return lush(function()
    ---@diagnostic disable: undefined-global
    return {
      TodoBgFIX { gui = 'bold', fg = p.black, bg = p.red },
      TodoFgFIX { fg = p.red },
      TodoSignFIX { bg = p.black, fg = p.red },
      TodoBgNOTE { bg = p.blue, fg = p.black, gui = 'bold' },
      TodoFgNOTE { fg = p.blue },
      TodoSignNOTE { bg = p.black, fg = p.blue },
      TodoBgWARN { bg = p.yellow, fg = p.black, gui = 'bold' },
      TodoFgWARN { fg = p.yellow },
      TodoSignWARN { bg = p.yellow, fg = p.black, gui = 'bold' },
      TodoBgPERF { bg = p.blue, fg = p.black, gui = 'bold' },
      TodoFgPERF { fg = p.blue },
      TodoSignPERF { bg = p.black, fg = p.blue },
      TodoBgHACK { bg = p.blue, fg = p.black, gui = 'bold' },
      TodoFgHACK { fg = p.blue },
      TodoSignHACK { bg = p.black, fg = p.blue },
      TodoBgTEST { bg = p.green, fg = p.black, gui = 'bold' },
      TodoFgTEST { fg = p.green },
      TodoSignTEST { bg = p.black, fg = p.green },
      TodoBgTODO { fg = p.black, bg = p.yellow, gui = 'bold' },
      TodoFgTODO { fg = p.yellow },
      TodoSignTODO { bg = p.black, fg = p.yellow },
    }
    ---@diagnostic enable: undefined-global
  end)
end
