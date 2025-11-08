---@class LaunchIdeTarget
local Target = {}

local function get_all_files()
    local buffers = vim.api.nvim_list_bufs()

    local relative_paths = {}

    for _, bufnr in ipairs(buffers) do
        if not vim.api.nvim_buf_is_loaded(bufnr) or vim.bo[bufnr].buftype ~= "" then
            goto continue
        end

        local full_path = vim.api.nvim_buf_get_name(bufnr)
        local relative_path = vim.fn.fnamemodify(full_path, ":.")

        if relative_path ~= "" then
            table.insert(relative_paths, relative_path)
        end

        ::continue::
    end

    return table.concat(relative_paths, " ")
end

---@param open_all_files boolean
---@return string
function Target:get_files(open_all_files)
    if open_all_files then
        return get_all_files()
    end

    return vim.fn.expand('%:.')
end

return Target
