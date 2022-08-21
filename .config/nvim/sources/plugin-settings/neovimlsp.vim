lua << EOF

-- nvim-cmp settings
local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand  = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- vsnip
        end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- vsnip
      }, {
        {name = 'buffer'},
      })
  })

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require'lspconfig'.clangd.setup{
    capabilities = capabilities,
}
require'lspconfig'.bashls.setup{
    capabilities = capabilities,
}
require'lspconfig'.eslint.setup{
    capabilities = capabilities,
}
require'lspconfig'.jedi_language_server.setup{
    capabilities = capabilties,
}
require'lspconfig'.intelephense.setup{
    capabilties = capabilties,
}
require'lspconfig'.pylsp.setup{
    capabilties = capabilities,
}
require'lspconfig'.pyright.setup{
    capabilities = capabilities,
}
require'lspconfig'.rust_analyzer.setup{
    capabilities = capabiltiies,
}

require'lspconfig'.sumneko_lua.setup{
    settings={
        Lua = {
            runtime = {
                    version = 'LuaJIT',
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        }
    },
    capabilities = capabilities,
}

local frontend_capabilities=vim.lsp.protocol.make_client_capabilities()
frontend_capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.cssls.setup{
    capabilities = frontend_capabilities,
}
require'lspconfig'.html.setup{
    capabilities = frontend_capabilities,
}
require'lspconfig'.jsonls.setup{
    capabilities = frontend_capabilities,
}

local servers = {'bashls','clangd', 'cssls', 'eslint', 'html', 'jedi_language_server', 'jsonls', 'intelephense', 'pylsp', 'pyright', 'rust_analyzer', 'sumneko_lua'}

EOF
