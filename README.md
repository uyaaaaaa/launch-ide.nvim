# launch-ide.nvim

A simple Neovim plugin to quickly open your current project in IDE.

## Supported Editors

*   Visual Studio Code (`vscode`)
*   Cursor (`cursor`)
*   Zed (`zed`)

## 💾 Installation

Install with your favorite plugin manager.

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "uyaaaaaa/launch-ide.nvim",
    opts = {}
}
```

##  Configuration

The `setup` function applies your configuration. The default editor is `vscode`.

```lua
return {
    "uyaaaaaa/launch-ide.nvim",
    opts = {
        editor = "cursor",
    }
}
```

## 🚀 Functions

The plugin exposes an `exec` function. You can create a user command or a keymap to invoke it.

```lua
require("launch-ide").exec()
```

### User Command

Add the following to your `init.lua` to create a `:LaunchIDE` command:

```lua
vim.api.nvim_create_user_command("LaunchIDE", require("launch-ide").exec, {})
```

Then, run the command to open the current file's directory in your configured editor:

```
:LaunchIDE
```

### Keymap

Alternatively, create a keymap:

```lua
-- Open in IDE with <leader>o
vim.keymap.set("n", "<leader>o", require("launch-ide").exec, { desc = "Open in external editor" })
```
