---@class LaunchIdeConfig
---@field opts LaunchIdeConfig
---@field setup function
---@field apply function
local Config = {}

-- Default options
---@class LaunchIdeConfig
Config.opts = {
    name = "vscode",
    open_all_files = false,
    open_new_window = false,
}

---@param opts table
---@return LaunchIdeConfig
function Config.setup(opts)
    opts = opts or {}
    Config.opts = vim.tbl_deep_extend("force", Config.opts, opts)

    return Config.opts
end

---@param opts table
---@return LaunchIdeConfig
function Config.apply(opts)
    opts = opts or {}

    return vim.tbl_deep_extend("force", Config.opts, opts)
end

return Config
