local lush = require('lush')
local hsl = lush.hsl

local black = hsl(0, 0, 0)
local white = hsl(0, 0, 100)

local red = hsl(0, 100, 50)
local green = hsl(140, 100, 50).darken(10)
local blue = hsl(210, 100, 50).lighten(25)
local yellow = hsl(60, 100, 50)

local function grey(n) return hsl(0, 0, n) end

return {
  black = black,
  white = white,
  red = red,
  green = green,
  blue = blue,
  yellow = yellow,
  grey = grey,
  grey1 = grey(7),
  grey2 = grey(17),
  grey3 = grey(30),
  grey4 = grey(40),
  grey5 = grey(50),
  grey6 = grey(60),
  grey7 = grey(70),
  grey8 = grey(80),
  grey9 = grey(90),
}
