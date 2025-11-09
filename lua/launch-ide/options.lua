---@class LaunchIdeOptions
---@field val table
---@field set function
---@field get function
local Options = {}

Options.val = {}

---@param new_window boolean
---@return LaunchIdeOptions
function Options:set(new_window)
    -- Reset values
    self.val = {}

    if new_window then table.insert(self.val, "-n") end

    return self
end

function Options:get()
    return table.concat(self.val, " ")
end

return Options
