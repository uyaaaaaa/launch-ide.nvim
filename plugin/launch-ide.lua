--- ===================================================================
--- Commands
--- ===================================================================

vim.api.nvim_create_user_command(
    "LaunchIDE",
    function(args)
        local opts = {}
        if args.fargs[1] ~= nil then
            opts.name = args.fargs[1]
        end

        require("launch-ide").exec(opts)
    end,
    {
        desc = "Open file in your IDE",
        nargs = "?",
        complete = function()
            return require("launch-ide.modules.editor"):get_supported_names()
        end,
    }
)

