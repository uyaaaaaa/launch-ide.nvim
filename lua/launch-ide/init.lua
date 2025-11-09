---@class LaunchIde
local M = {}

local config = require("launch-ide.config")
local editor = require("launch-ide.editor")
local path = require("launch-ide.path")
local command = require("launch-ide.command")
local options = require("launch-ide.options")

---@param opts table
function M.setup(opts)
    config:setup(opts)
end

---@param opts table
function M.exec(opts)
    local _config = config:apply(opts)
    local cmd = editor.get_command(_config.name)

    if cmd == nil then
        return
    end

    local cmd_path = path:set(_config.open_all_files)
    local cmd_opts = options:set(_config.open_new_window)

    command.execute(cmd, cmd_path, cmd_opts)
end

return M
