-- NVIM STOCK OPTION
require("core.keymaps")
require("core.autosave")
require("core.mescalatoreLinee")

-- PACKER
require("core.packer")
require("core.packer_config.colorscheme")
require("core.packer_config.completions")
require("core.packer_config.harpoon")
require("core.packer_config.init")
require("core.packer_config.lsp")
require("core.packer_config.telescope")
require("core.packer_config.tree")
require("core.packer_config.treesitter")
require("core.packer_config.tailwindSorter")
require("core.packer_config.timeTracker")


-- GENERAL EDITOR SETTINGS
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.api.nvim_create_autocmd("FileType", { -- visualizzare i numeri di linea anche in netrw
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
