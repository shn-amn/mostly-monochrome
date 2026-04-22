local lush = require('lush')

-- The goal of this module is to adjust the colors of nvim-web-devicons
-- so that they are saturated and their lightnesses are somewhat balanced,
-- meaning that the greens are not too bright and the blues are not too dark.
-- So, here are our constants:
local s_target = 100
local l_red    = 50
local l_green  = 40
local l_blue   = 60
-- Then we slove the equation Y(θ) = M + C1·sin(θ) + C2·cos(θ)
-- for Y(0) = l_red, Y(2π/3) = l_green and Y(4π/3) = l_blue
-- to obtain our constants:
local M  = (l_red + l_green + l_blue) / 3
local C1 = l_red - M
local C2 = (l_green - l_blue) / math.sqrt(3)

local function balanced_l(hue)
  local theta = math.rad(hue)
  local Y = M + (C1 * math.cos(theta)) + (C2 * math.sin(theta))
  return Y
end

local fix = function(color)
  local original = lush.hsl(color)
  if original.s == 0 then
    return original
  end
  local fixed = lush.hsl(color).saturation(s_target).lightness(balanced_l(original.h))
  return fixed
end

local function show_to_wife()
  local block = "▚" -- ▀ ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ ▉ ▊ ▋ ▌ ▍ ▎ ▏ ▐ ░ ▒ ▓ ▔ ▕ ▖ ▗ ▘ ▙ ▚ ▛ ▜ ▝ ▞ ▟
  local line_flat = "Flat 50%:     "
  local line_balanced = "Balanced:     "
  -- local lightness = "Lightness:    "
  local adjustment = "              "
  local C = math.sqrt(C1 * C1 + C2 * C2)

  for h = 0, 359, 3 do
    local lb = balanced_l(h)
    local flat_hex = lush.hsl(h, s_target, 50).hex
    local balanced_hex = lush.hsl(h, s_target, lb).hex

    local function colorize(char, hex)
      local r = tonumber(hex:sub(2, 3), 16)
      local g = tonumber(hex:sub(4, 5), 16)
      local b = tonumber(hex:sub(6, 7), 16)
      return string.format("\27[38;2;%d;%d;%dm%s\27[0m", r, g, b, char)
    end

    local diff = math.floor((lb - M + C) * 8 / (2 * C) + 0.5)
    local adj = diff == 0 and ' ' or vim.fn.nr2char(vim.fn.char2nr('▀') + diff)

    line_flat = line_flat .. colorize(block, flat_hex)
    line_balanced = line_balanced .. colorize(block, balanced_hex)
    adjustment = adjustment .. adj
    -- lightness = lightness .. string.format('%02d', lb - 1)
  end

  io.write('\n' .. 'M = ' .. M .. ', C1 = ' .. C1 .. ', C2 = ' .. C2 .. ', C = ' .. C)
  io.write('\n' .. line_flat)
  io.write('\n' .. line_balanced)
  io.write('\n' .. adjustment .. '\n')
  -- io.write('\n' .. lightness .. '\n')
  io.flush()
end

return function(p)
  local devicons = require 'nvim-web-devicons'
  if devicons then
    local icons = devicons.get_icons()
    ---@diagnostic disable: undefined-global
    local res = lush(function() return {} end)
    for _, icon in pairs(icons) do
      local cur = lush(function(helpers)
        return { helpers.sym('DevIcon' .. icon.name) { fg = fix(icon.color) } }
      end)
      res = lush.merge { res, cur }
    end
    local overrides = lush(function() return {
      DevIconDefault { fg = p.grey9 },
      DevIconTxt { fg = p.grey9 },
      DevIconConf { fg = p.grey7 },
      DevIconConfiguration { fg = p.grey7 },
    } end)
    return lush.merge { res, overrides }
    ---@diagnostic enable: undefined-global
  else
    return lush(function() return {} end)
  end
end
