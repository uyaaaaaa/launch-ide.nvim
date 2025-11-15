---@class LaunchIde
local M = {}

local config = require("launch-ide.config")
local e = require("launch-ide.modules.editor")
local p = require("launch-ide.modules.path")
local o = require("launch-ide.modules..options")
local cmd = require("launch-ide.modules.command")

---@param opts table
function M.setup(opts)
    config:setup(opts)
end

---@param opts table?
function M.exec(opts)
    local _config = config:apply(opts)
    local editor = e:set(_config.name)

    if e.cmd == nil then
        vim.notify("\"" .. _config.name .. "\" is not supported. Please check your configuration.")
        return
    end

    vim.notify("[Start] launching " .. _config.name .. "...")

    local path = p:set(_config.open_all_files)
    local options = o:set(_config.open_new_window)

    cmd.execute(editor, path, options)
end

return M
