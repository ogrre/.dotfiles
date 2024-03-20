local M = {}

function M.map(mode, lhs, rhs, opts)
    local options = opts or {noremap = true}
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M

