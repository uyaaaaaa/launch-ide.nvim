--- ===================================================================
--- Commands
--- ===================================================================

vim.api.nvim_create_user_command(
    "LaunchIDE",
    function()
        local opts = require("launch-ide.config").val
        require("launch-ide").exec(opts)
    end,
    { desc = "Open file in your IDE" }
)

