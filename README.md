<div align="center">

# posting.nvim

## 🐋 A `posting` client for neovim 🔌

</div>

<div align="center">

![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua&logoColor=white)

</div>

<div align="center">

![License](https://img.shields.io/badge/License-MIT-brightgreen?style=flat-square)
![Status](https://img.shields.io/badge/Status-Dev-informational?style=flat-square)
![Neovim](https://img.shields.io/badge/Neovim-0.9+-green.svg?style=flat-square&logo=Neovim&logoColor=white)

</div>

</div>

## Overview

`posting.nvim` is a [`posting` plugin](https://github.com/darrenburns/posting) for neovim that allows you testing your API directly from editor. `posting` itself is a simple terminal UI API client like Httpie with advanced mouse support and a lot of features.

My work is based on `lazydocker` [plugin](https://github.com/mgierada/lazydocker.nvim), so thanks to [@mgierada](https://github.com/mgierada) for providing excellent example to build own integrations!

## 🔌 Available commands

- `Posting`

## Default keymaps

Any default key map could be easily overwritten by modifying the `keys` property. See the Installation section

- `<leader>lp` -- open posting in floating window
- `<c-c>` -- close the floating window with `posting`

## ⚡️Requirements

It should work with any fairly modern neovim version. 

## 💻 Installation

Make sure you have `posting` up and running. The in-depth installing walkthrough is perfectly described in [here](https://github.com/darrenburns/posting).

Install the `posting.nvim` neovim plugin with your favourite package manager:

[Lazy](https://github.com/folke/lazy.nvim)

```lua
-- posting.nvim
{
  "YarikYar/posting.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  config = function()
    require("posting").setup({
	    border = "curved", -- valid options are "single" | "double" | "shadow" | "curved"
    })
  end,
  event = "BufRead",
  keys = {
    {
      "<leader>lp",
      function()
        require("posting").open()
      end,
      desc = "Open Posting floating window",
    },
  },
},
```

If you want to make sure `posting.nvim` starts whenever Neovim starts, you can set an event to `event = "VeryLazy"`.

