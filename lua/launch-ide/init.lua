---@class LaunchIde
local M = {}

local config = require("launch-ide.config")
local editor = require("launch-ide.editor")
local target = require("launch-ide.target")

function M.setup(opts)
    config:setup(opts)
end

function M.exec(opts)
    local _config = config:apply(opts)
    local cmd = editor:get_command(_config.name)

    if cmd == nil then
        return
    end

    local path = target:get_files(_config.open_all_files)

    local output = vim.fn.system(cmd .. " . " .. path)

    if output then
        vim.notify(output, vim.log.levels.ERROR)
    end
end

return M
