---@class LaunchIdeCommand
---@field execute function
local Command = {}

---@param editor LaunchIdeEditor
---@param path LaunchIdePath
---@param options LaunchIdeOptions
function Command.execute(editor, path, options)
    local command_string = editor:get_command() .. " " .. options:get() .. " " .. path:get()

    local output = vim.fn.system(command_string)

    if output then
        vim.notify(output, vim.log.levels.ERROR)
        return
    end

    vim.notify("[Success] " .. command_string)
end

return Command
