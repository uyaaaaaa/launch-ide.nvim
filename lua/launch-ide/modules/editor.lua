---@class LaunchIdeEditor
---@field cmd string?
---@field set function
---@field get_command function
local Editor = {}

---@enum
local SUPPORTED_EDITOR = {
    vscode = "code",
    cursor = "cursor",
    zed = "zed",
}

---@type string?
Editor.cmd = nil

---@param name string
---@return LaunchIdeEditor
function Editor:set(name)
    self.cmd = SUPPORTED_EDITOR[name]

    return self
end

---@return string?
function Editor:get_command()
    return self.cmd
end

return Editor
