local lush = require('lush')

return function(p, basic)
  return lush(function(injected_functions)
    ---@diagnostic disable: undefined-global
    local sym = injected_functions.sym
    return {
      sym '@markup' { basic.Normal }, --.Tag },
      sym '@punctuation.bracket' { basic.Delimiter },
      sym '@variable' { basic.Identifier },
      sym '@function.call' { basic.Function },
      sym '@function.method' { basic.Function },
    }
    ---@diagnostic enable: undefined-global
  end)
end
