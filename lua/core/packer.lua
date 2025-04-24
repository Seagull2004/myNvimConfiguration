-- This file can be loaded by calling `lua require('plugins')` from your init.lua
-- Only required if you have packer configured as `opt`
-- :PackerSync per sincronizzare i plugin elencati in questo file
-- :so per aggiornare la sorgente
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- PACKER 
	-- è un plugin per gesire plugin sviluppati da developer su github
	use ('wbthomason/packer.nvim')

	-- TELESCOPE 
	-- è un fuzzy finder per muoveri velocemente tra i file 
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- TREESITTER
	-- permette di avere una colorazione della sintassi decente
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('nvim-treesitter/playground')

	-- VIMBEGOOD
    -- esercitati con le vim motion!
	use ('ThePrimeagen/vim-be-good')

    -- HARPOON
    -- serve per salvare dei file in un buffer che permette di accedervi velocemente
    use ('ThePrimeagen/harpoon')

	-- LSP, Language Server Protocol
    -- Snippets!!
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional
			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

    -- VIM VISUAL MULTI
    -- multicursore con ricerca utilizzando <C-N>
	use { 'mg979/vim-visual-multi', branch = 'master' }

	-- LUNARVIM
	-- è un plugin che permette di cambiare il tema dell'editor
    use ("lunarvim/colorschemes")

    -- GRUVBOX
    -- simil lunarvim permette di impostare un tema personalizzato
    -- non lo uso siccome sono soddisfatto con il colorscheme attuale
    use { "ellisonleao/gruvbox.nvim" }

    -- FILE TREE
    -- permette di avere una finestra che visualizza sotto forma di albero i file della cartella aperta con vim
    use ('nvim-tree/nvim-tree.lua')
    use ('nvim-tree/nvim-web-devicons')

    -- GITHUB THEME
    use ({ 'projekt0n/github-nvim-theme' })

    -- LASTPLACE: aprire un file e avere il cursore dove hai fatto ultima modifica
    use ({ 'farmergreg/vim-lastplace' })

    -- TOKYO
    use 'folke/tokyonight.nvim'

    -- TYPR
    use 'nvzone/volt'
    use {
        "nvzone/typr",
        requires = { "nvzone/volt" },
        opts = {},
        cmd = { "Typr", "TyprStats" },
    }

    -- TIMER
    use {
        "nvzone/timerly",
        opts = {},
        cmd = { "TimerlyToggle"},
    }

    -- TIME TRACKER
    use  { "3rd/sqlite.nvim" }
    use {
        "3rd/time-tracker.nvim",
        opts = {
            data_file = vim.fn.stdpath("data") .. "/time-tracker.db",
        },
    }
    -- use "3rd/sqlite.nvim"
    -- use  {
    --     "3rd/time-tracker.nvim",
    --     requires = { "3rd/sqlite.nvim" },
    --     opts = {
    --         data_file = vim.fn.stdpath("data") .. "/time-tracker.db",
    --     },
    --     cmd = { 'TimeTracker' },
    -- }
    --

    -- tailwidn sorter
    use {
        'laytan/tailwind-sorter.nvim',
        requires = {'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim'},
        config = function() require('tailwind-sorter').setup() end,
        run = 'cd formatter && npm ci && npm run build',
    }
end)
