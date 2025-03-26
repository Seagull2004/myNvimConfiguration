local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()


-- https://www.youtube.com/watch?v=h4g0m0Iwmys
-- da continuare

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "ast_grep",
        "clangd",
        "cssls",
        "html",
        "jdtls",
        "harper_ls",
        "ltex",
        "lua_ls",
        "texlab",
    }
})

local on_attach = function (_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', '<Leader>gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end


-- local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- require("lspconfig").lua_ls.setup {
--     capabilities = capabilities,
--     on_attach = on_attach
-- }
-- require("lspconfig").html.setup {
--     capabilities = capabilities,
--     on_attach = on_attach
-- }
-- require("lspconfig").ast_grep.setup {
--     capabilities = capabilities,
--     on_attach = on_attach
-- }
-- require("lspconfig").clangd.setup {
--     capabilities = capabilities,
--     on_attach = on_attach
-- }

-- Abilita la diagnostica di LSP (messaggi di errore a bordo pagina)
vim.diagnostic.config({
    virtual_text = false,     -- Mostra i messaggi di diagnostica inline
    signs = true,             -- Mostra le icone per i messaggi di diagnostica
    underline = true,         -- Sottolinea le righe con messaggi di errore o warning
    update_in_insert = false, -- Non aggiorna durante la modalità inserimento
})

-- Shortcut per mostrare i messaggi di diagnostica
vim.api.nvim_set_keymap('n', '<leader>sp', ':lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })

-- Shortcut per nascondere i messaggi di diagnostica (se hai bisogno di chiudere il popup)
vim.api.nvim_set_keymap('n', '<leader>hd', ':lua vim.diagnostic.hide()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sd', ':lua vim.diagnostic.show()<CR>', { noremap = true, silent = true })
