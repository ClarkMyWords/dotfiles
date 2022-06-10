" Taken from neovim/nvim-lspconfig

"autocmd BufWritePre <buffer> <cmd>EslintFixAll<CR>

lua << EOF
-- bash-lsp
require'lspconfig'.bashls.setup{}
-- clang
require'lspconfig'.clangd.setup{}
-- cssmodules
require'lspconfig'.cssmodules_ls.setup{}
-- emmet
require'lspconfig'.emmet_ls.setup{}
-- pylsp
require'lspconfig'.pylsp.setup{}
-- pyright
require'lspconfig'.pyright.setup{}
-- rls
require'lspconfig'.rls.setup{}
-- vimls
require'lspconfig'.vimls.setup{}

-- Linting settings
vim.cmd([[au CursorHold * lua vim.diagnostic.open_float(0,{scope = "cursor", focus=false})]])

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    float = {border = "single"},
    severity_sort = true,
})
EOF

