---@class LaunchIdeConfig
---@field val table
---@field setup function
---@field apply function
local Config = {}

-- Default options
Config.val = {
    name = "vscode",
    open_all_files = false,
    open_new_window = false,
}

---@param opts table
---@return table
function Config:setup(opts)
    opts = opts or {}
    self.val = vim.tbl_deep_extend("force", self.val, opts)

    return self.val
end

---@param opts table
---@return table
function Config:apply(opts)
    opts = opts or {}

    return vim.tbl_deep_extend("force", self.val, opts)
end

return Config
