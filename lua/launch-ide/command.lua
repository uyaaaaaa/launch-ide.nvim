---@class LaunchIdeCommand
---@field execute function
local Command = {}

---@param cmd string
---@param path LaunchIdePath
---@param options LaunchIdeOptions
function Command.execute(cmd, path, options)
    local command_string = cmd .. " " .. options:get() .. " " .. path:get()

    local output = vim.fn.system(command_string)

    if output then
        vim.notify(output, vim.log.levels.ERROR)
    end

    vim.notify("[Success] " .. command_string)
end

return Command
