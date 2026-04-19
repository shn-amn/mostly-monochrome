local lush = require("lush")
local palette = require("mostly-monochrome.palette")

local basic = require("mostly-monochrome.basic")(palette)
local lsp = require("mostly-monochrome.lsp")(palette, basic)
local todo = require("mostly-monochrome.todo")(palette)
local float = require("mostly-monochrome.float")(palette, basic)
local diagnostics = require("mostly-monochrome.diagnostics")(palette)
local statusline = require("mostly-monochrome.statusline")(palette)
local nvim_tree = require("mostly-monochrome.nvim-tree")(palette, basic)
local gitsigns = require("mostly-monochrome.gitsigns")(palette, basic)
local devicons = require("mostly-monochrome.devicons")(palette)

return lush.merge {
  basic,
  lsp,
  todo,
  float,
  diagnostics,
  statusline,
  nvim_tree,
  gitsigns,
  devicons
}
