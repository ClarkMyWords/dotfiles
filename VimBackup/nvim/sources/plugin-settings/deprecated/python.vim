" Python Neovim setup
" From jdhao.github.io

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Neoformat
" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1
"Enable trimming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" Jedi
let g:jedi#completions_enabled = 0
let g:jedi#user_splits_not_buffers = "right"

" Neomake
let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)


