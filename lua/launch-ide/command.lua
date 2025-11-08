---@class LaunchIdeCommand
---@field execute function
local Command = {}

---@param cmd string
---@param path table
---@param options table
function Command.execute(cmd, path, options)
    local command_string = cmd .. " . " .. table.concat(path, " ")

    local output = vim.fn.system(command_string)

    if output then
        vim.notify(output, vim.log.levels.ERROR)
    end
end

return Command
