# nerdify

**Nerdify** is a small Neovim plugin to transform text into different styles (circles, boxes, outlines, …) using [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) glyphs.

Think of it as a fun way to change the lettering inside your terminal editor, something you would usually not be able to do!

---

## Motivation

I always wanted the possibility to change the lettering in Neovim, but since we’re in a terminal environment that’s not really possible.  
This plugin is the next best thing: it maps your characters to styled alternatives (using Nerd Fonts glyphs) so you can quickly restyle text inline without leaving Neovim.

---

## Prerequisites

- A [Nerd Font](https://github.com/ryanoasis/nerd-fonts) patched font installed and active in your terminal  
- Neovim ≥ 0.7 (tested with Lua runtime)  

---

## Installation

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "yourname/stylez",
  config = function()
    -- optional setup later
  end
}
```

## usage

```lua
require("stylez").style("circles", "hello world")
```

Available flavours are:

- circles

- circles_outline

- box

- box_outline

- numeric

- numeric_box_multiple

- numeric_box_multiple_outline


## Roadmap

-  Add more style tables (arrows, fancy, etc.)

## Thanks to

- https://github.com/ryanoasis/nerd-fonts
- https://github.com/ellisonleao/nvim-plugin-template

