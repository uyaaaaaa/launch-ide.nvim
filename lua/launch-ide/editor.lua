---@class LaunchIdeEditor
local Editor = {}

---@enum
local SUPPORTED_EDITOR = {
    vscode = "code",
    cursor = "cursor",
    zed = "zed",
}

---@param name string
---@return nil|string
function Editor:get_command(name)
    local cmd = SUPPORTED_EDITOR[name]

    if cmd ~= nil then
        return cmd
    end

    vim.notify("\"" .. name .. "\" is not supported. Please check your configuration.")
end


return Editor
