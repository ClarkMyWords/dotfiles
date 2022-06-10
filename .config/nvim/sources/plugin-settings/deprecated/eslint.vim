augroup lint
    autocmd!
    autocmd BufWritePre <buffer> <cmd>EslintFixAll<CR>
augroup end
