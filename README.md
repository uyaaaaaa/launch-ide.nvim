# launch-ide.nvim

You've walked the solitary path of Neovim, yet the peaceful days of IDEs call to you.
This plugin is for the lost lamb who can't quite let go of the mundane world.

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
        editor = "vscode",  -- "vscode" | "cursor" | "zed"
    }
}
```

## 🚀 Usage

```lua
vim.keymap.set("n", "<leader>o", function return require("launch-ide").exec() end, { desc = "Open in external editor" })
```

## ☑️ Future Mundane Expansion Plans (TODO)
- [x] Improved settings customization
    - [x] Launch options
    - [-] Default keymap settings
- [x] Command creation
- [x] Documentation update
