-- DEFAULT COLORSCHEMES
-- vim.cmd "colorscheme desert"
-- vim.cmd "colorscheme habamax"
-- vim.cmd "colorscheme retrobox" 
-- vim.cmd "colorscheme slate"
-- vim.cmd "colorscheme sorbet"
-- vim.cmd "colorscheme zaibatsu"
-- vim.cmd('colorscheme lunar')

-- LUNARVIM COLORSCHEMES
-- vim.cmd "colorscheme onedark"

-- vim.cmd "colorscheme aurora"
-- vim.cmd "colorscheme darkplus"
-- vim.cmd "colorscheme codemonkey"
-- vim.cmd "colorscheme ferrum"
-- vim.cmd "colorscheme lunar"
-- vim.cmd "colorscheme onedarker"
-- vim.cmd "colorscheme onedarkest"
-- vim.cmd "colorscheme onenord"
-- vim.cmd "colorscheme spacedark"
-- vim.cmd "colorscheme system76"
-- vim.cmd "colorscheme tomorrow"

-- Default options
-- require('github-theme').setup({
--     options = {
--         -- Compiled file's destination location
--         compile_path = vim.fn.stdpath('cache') .. '/github-theme',
--         compile_file_suffix = '_compiled', -- Compiled file suffix
--         hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
--         hide_nc_statusline = true, -- Override the underline style for non-active statuslines
--         transparent = false,       -- Disable setting bg (make neovim's background transparent)
--         terminal_colors = true,    -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
--         dim_inactive = false,      -- Non focused panes set to alternative background
--         module_default = true,     -- Default enable value for modules
--         styles = {                 -- Style to be applied to different syntax groups
--             comments = 'italic',       -- Value is any valid attr-list value `:help attr-list`
--             functions = 'bold',
--             keywords = 'bold',
--             variables = 'NONE',
--             conditionals = 'NONE',
--             constants = 'NONE',
--             numbers = 'NONE',
--             operators = 'NONE',
--             strings = 'italic',
--             types = 'bold,italic',
--         },
--         inverse = {                -- Inverse highlight for different types
--             match_paren = false,
--             visual = false,
--             search = false,
--         },
--         darken = {                 -- Darken floating windows and sidebar-like windows
--             floats = true,
--             sidebars = {
--                 enable = true,
--                 list = {},             -- Apply dark background to specific windows
--             },
--         },
--         modules = {                -- List of various plugins and additional options
--             -- ...
--         },
--     },
--     palettes = {},
--     specs = {},
--     groups = {},
-- })

-- setup must be called before loading
-- vim.cmd('colorscheme github_dark')


-- Imposta il colorscheme (deve venire prima)
-- vim.cmd.colorscheme("tokyonight")
vim.cmd.colorscheme("gruvbox")



-- Rimuove lo sfondo e lo rende trasparente
vim.cmd [[
  highlight Normal guibg=none ctermbg=none
  highlight NormalFloat guibg=none ctermbg=none
  highlight LineNr guibg=none ctermbg=none
  highlight SignColumn guibg=none ctermbg=none
  highlight VertSplit guibg=none ctermbg=none
  highlight StatusLine guibg=none ctermbg=none
  highlight NvimTreeNormal guibg=none ctermbg=none
  highlight NvimTreeNormalNC guibg=none ctermbg=none
  highlight NvimTreeEndOfBuffer guibg=none ctermbg=none
  highlight NvimTreeVertSplit guibg=none ctermbg=none
  highlight NormalNC guibg=none ctermbg=none
]]

