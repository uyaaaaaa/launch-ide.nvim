---@class LaunchIde
local M = {}

---@class Config
---@field editor string
local default_config = {
    editor = "vscode",
}

---@type Config
M.config = default_config

---@enum
local COMMANDS = {
    vscode = "code",
    cursor = "cursor",
    zed = "zed",
}

---@param args Config?
M.setup = function(args)
    M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

M.exec = function()
    local cmd = COMMANDS[M.config.editor]

    if cmd == nil then
        vim.notify("No configure for \"" .. M.config.editor .. "\".\nPlease check your configuration.")
        return
    end

    local path = vim.fn.expand('%:.')

    local output = vim.fn.system(cmd .. " . " .. path)

    if output then
        vim.notify(output, vim.log.levels.ERROR)
    end
end

return M
