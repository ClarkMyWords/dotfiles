" Deoplete Configuration taken from official Deoplete github and @wuelnermartinez

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']})

"maximum candidate window length
call deoplete#custom#source('_', 'max_menu_width', 80)

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set splitbelow

