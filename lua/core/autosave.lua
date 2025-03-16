
-- autosave per nvim
-- <leader>s come toggle
_G.autosave_enabled = true

function ToggleAutosave()
    _G.autosave_enabled = not _G.autosave_enabled
    if _G.autosave_enabled then
        vim.cmd("echo 'Autosave ON'")
    else
        vim.cmd("echo 'Autosave OFF'")
    end
end

vim.api.nvim_create_autocmd({"InsertLeave", "TextChanged"}, {
    pattern = "*",
    group = autosave_group,
    callback = function()
        if _G.autosave_enabled and vim.bo.modifiable and vim.bo.readonly == false and vim.fn.expand("%") ~= "" then
            vim.cmd("silent! write")
        end
    end,
})

vim.api.nvim_set_keymap("n", "<leader>as", ":lua ToggleAutosave()<CR>", { noremap = true, silent = true })
