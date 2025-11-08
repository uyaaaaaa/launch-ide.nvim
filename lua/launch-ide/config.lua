---@class LaunchIdeConfig
local Config = {}

-- Default options
Config.opts = {
    name = "vscode",
    open_all_files = false,
}

function Config:setup(opts)
    opts = opts or {}
    Config.opts = vim.tbl_deep_extend("force", Config.opts, opts)

    return Config.opts
end

function Config:apply(opts)
    opts = opts or {}

    return vim.tbl_deep_extend("force", Config.opts, opts)
end

return Config
