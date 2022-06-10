" NeoVim configs adapated from @wuelnermartinez
" github.com/wuelnermartinez

" FILE CONFIG SETTINGS.VIM FOR GENERAL CHANGES

" Disabling Neovim providers:
" let g:loaded_node_provider=0
" let g:loaded_ruby_provider=0
" let g:loaded_perl_provider=0

" Required setting to use custom options:
" set nocompatible

" Set leader:
" let mapleader=','

" Python Provider
" let g:python3_host_prog='/usr/bin/python3'
" let g:python_host_prog='/usr/bin/python'

" Folding
" set foldenable
" set foldlevelstart=10
" set foldnestmax=10
" set foldmethod=indent

" Vim performance settings:
"set hidden
"set lazyredraw
"set updatetime=100

" File Backups
set nobackup
set nowritebackup
set undofile
set undodir=/tmp/nvim-undo/

" Vim Interaction Settings:
set backspace=indent,eol,start
set clipboard=unnamedplus

" Vim Interface:
set signcolumn=yes
" set number
" set relativenumber
set cmdheight=2
set ruler
set splitright
set splitbelow

" Vim encoding:
set encoding=utf-8
filetype plugin indent on
syntax enable

" Vim coding:
set wrap
set textwidth=0
set wrapmargin=0
set formatoptions=cq
set formatoptions-=t
set expandtab
set smartindent
set autoindent
set softtabstop=4
set shiftwidth=4
set shiftround
set showmatch

" Vim searching and completion:
set ignorecase
set smartcase
set incsearch
set hlsearch

" History
set history=50
set showcmd

" Working Directory
autocmd BufEnter * silent! lcd %:p:h

" Highlighted Yank
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{timeout=250}
augroup END

"Adapted from @wuelnermartinez 

lua <<EOF
    local set = vim.opt

    set.compatible = false

    vim.g.mapleader = " "

    vim.g["loaded_node_provider"] = 0
    vim.g["loaded_ruby_provider"] = 0
    vim.g["loaded_perl_provider"] = 0

    vim.g["python3_host_prog"] = "/usr/bin/python3"
    vim.g["python_host_prog"] = "/usr/bin/python"

    set.number = true
    set.relativenumber = true

    set.foldenable = true
    set.foldmethod= "syntax"
    set.foldlevelstart = 10
    set.foldnestmax=10

EOF
