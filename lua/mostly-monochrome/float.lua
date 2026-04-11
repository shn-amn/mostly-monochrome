local lush = require('lush')

return function(p, basic)
  return lush(function()
    ---@diagnostic disable: undefined-global
    return {
      Float { basic.Normal }, -- bg = p.grey1, fg = p.grey8 },
      NormalFloat { Float },
      FloatBorder { Float },
      FloatTitle { basic.Title}, --, bg = p.grey8 },
      FloatFooter { FloatTitle },
      FloatShadow { Float, blend = 100 },
      FloatShadowThrough { Float, blend = 100 },
    }
    ---@diagnostic enable: undefined-global
  end)
end
