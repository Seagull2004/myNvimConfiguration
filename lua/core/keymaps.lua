-- LEADER KEY
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Ex vs Rex
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
-- vim.keymap.set("n", "<C-w>", "<C-w>v") -- come su obsidian
vim.keymap.set('v', '<Leader>cp', '"+y')
vim.keymap.set('n', '<Leader>cpa', 'ggVG"+y<C-o>')
vim.keymap.set('n', '<Leader>dd', 'ggdG')


-- MULTI WINDOW
vim.keymap.set('n', '<Leader>n', '<C-w>v')
vim.keymap.set('n', '<C-l>', '<C-w>l') -- per farlo funzionare è stata modificata la riga 6442 del file /opt/homebrew/Cellar/neovim/0.10.2_1/share/nvim/runtime/autoload/netrw.vim
vim.keymap.set('n', '<C-h>', '<C-w>h')
-- vim.keymap.set("n", "<leader>a", vim.cmd.tabnew)
-- vim.keymap.set("n", "<leader>1", ":tabmove 1")
-- vim.keymap.set("n", "<leader>2", ":tabmove 2")


-- GENERAL EDITOR SETTINGS
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
-- visualizzare i numeri di linea anche in netrw
vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        vim.opt_local.number = true
        vim.opt_local.relativenumber = true
    end,
})


-- USE SPACES FOR TABS AND WHATNOT
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.softtabstop = 4
