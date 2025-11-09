---@class LaunchIdePath
---@field set function
---@field get function
local Path = {}

Path.val = {}

---@param open_all_files boolean
---@return LaunchIdePath
function Path:set(open_all_files)
    -- Reset values
    self.val = { "." }

    if open_all_files then
        local buffers = vim.api.nvim_list_bufs()

        for _, bufnr in ipairs(buffers) do
            if not vim.api.nvim_buf_is_loaded(bufnr) or vim.bo[bufnr].buftype ~= "" then
                goto continue
            end

            local full_path = vim.api.nvim_buf_get_name(bufnr)
            local relative_path = vim.fn.fnamemodify(full_path, ":.")

            if relative_path ~= "" then
                table.insert(self.val, relative_path)
            end

            ::continue::
        end
    else
        table.insert(self.val, vim.fn.expand("%:."))
    end

    return self
end

---@return string
function Path:get()
    return table.concat(self.val, " ")
end

return Path
