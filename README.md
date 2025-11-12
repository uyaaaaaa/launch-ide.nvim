# launch-ide.nvim

For people who just can't quit the IDE life.

## 🚪 Supported Editors

*   Visual Studio Code (`vscode`)
*   Cursor (`cursor`)
*   Zed (`zed`)

## 🛠 Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "uyaaaaaa/launch-ide.nvim",
    opts = {}
}
```

## ⚙ Configuration

```lua
return {
    "uyaaaaaa/launch-ide.nvim",
    opts = {
        editor = "vscode",        -- "vscode" | "cursor" | "zed"
        open_all_files = false,   -- Whether open all buffers that currently open in neovim.
        open_new_window = false,  -- Whether open in new IDE window.
    }
}
```

## 🚀 Usage

```lua
vim.keymap.set("n", "<leader>o", function return require("launch-ide").exec() end, { desc = "Open in external editor" })
```

