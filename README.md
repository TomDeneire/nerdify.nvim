# ✨ nerdify

**Nerdify** is a small Neovim plugin to transform text into different styles (circles, boxes, outlines, …) using [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) glyphs.

Think of it as a fun way to change the lettering inside your terminal editor, something you would usually not be able to do!

---

## 🎯 Motivation

I always wanted the possibility to change the lettering in Neovim, but since we’re in a terminal environment that’s not really possible.  

This plugin is the next best thing: it maps your characters to styled alternatives (using Nerd Fonts glyphs) so you can quickly restyle text inline without leaving Neovim.


## ⚙️ Prerequisites

- A [Nerd Font](https://github.com/ryanoasis/nerd-fonts) patched font installed and active in your terminal.
- If you need help installing a Nerd Font, check out [this tool](https://github.com/officialrajdeepsingh/nerd-fonts-installer).
- Neovim ≥ 0.7 (tested with Lua runtime)  

To verify the conversion to Nerd font glyphs happens correctly in your terminal environment you can run the repository's test:

``` bash
git clone https://github.com/TomDeneire/nerdify.nvim
cd nerdify.nvim
make test
```

## 📦 Installation

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "TomDeneire/nerdify.nvim",
  config = function()
    -- optional setup later
  end
}
```

## 🚀 Usage

```lua
require("nerdify").style("circles", "hello world")
```

## 🎨 Available flavours

- circles
- circles_outline
- box
- box_outline
- numeric
- numeric_box_multiple
- numeric_box_multiple_outline

Some flavours have more characters than others, so you can choose the one that fits your needs.

![flavours.png](https://github.com/TomDeneire/nerdify.nvim/blob/main/flavours.png)

## Use cases

Use this plugin to style various Neovim UI elements.

### Statusline

### Bufferline

### Pickers

## 🛣️ Roadmap

-  Add more style tables (arrows, fancy, etc.)

## 🙏 Thanks to

- [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)
- [nvim-plugin-template](https://github.com/ellisonleao/nvim-plugin-template)

