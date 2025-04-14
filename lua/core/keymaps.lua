-- LEADER KEY
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Ex vs Rex
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('v', '<Leader>cp', '"+y')
vim.keymap.set('n', '<Leader>ca', 'gg"+yG<C-o>')
vim.keymap.set('n', '<Leader>da', 'ggdG')

-- gestire lo scrolling del file in modo che il cursore rimanga centrato
vim.keymap.set('n', '<C-d>', function()
    local cur_line = vim.fn.line('.') -- Riga attuale
    local last_line = vim.fn.line('$') -- Ultima riga
    local half_page = math.floor(vim.fn.winheight(0) / 2) -- Metà altezza finestra

    if cur_line + half_page >= last_line then
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-d>", true, true, true), "n", false)
    else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-d>M", true, true, true), "n", false)
    end
end, { silent = true })
vim.keymap.set('n', '<C-u>', function()
    local cur_line = vim.fn.line('.') -- Riga attuale
    local half_page = math.floor(vim.fn.winheight(0) / 2) -- Metà altezza finestra

    if cur_line - half_page <= 1 then
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-u>", true, true, true), "n", false)
    else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-u>M", true, true, true), "n", false)
    end
end, { silent = true })



-- MULTI WINDOW
vim.keymap.set('n', '<Leader>n', '<C-w>v')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l') -- per farlo funzionare è stata modificata la riga 6442 del file /opt/homebrew/Cellar/neovim/0.10.2_1/share/nvim/runtime/autoload/netrw.vim
-- vim.keymap.set("n", "<C-w>", "<C-w>v") -- come su obsidian
