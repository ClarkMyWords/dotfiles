" Adapted from @wuelnermartinez

" Install Vim Plugins
call plug#begin('~/local/share/nvim/plugged')

"""
" Language Server Protocol

" Neovim LSP Config
Plug 'neovim/nvim-lspconfig'

" nvim-cmp Completion Engine
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" vim-vsnip Snippet Tool
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

"""

"""
" General formatting

" Noctu color scheme
Plug 'noahfrederick/vim-noctu'

" Vim Airline
Plug 'vim-airline/vim-airline'

" Auto Pairs (Quotes, Parens, Braces/Brackets)
Plug 'jiangmiao/auto-pairs'

" Indent Blankline
Plug 'lukas-reineke/indent-blankline.nvim'

" NERD Commenter
Plug 'preservim/nerdcommenter'

" vim devicons
Plug 'ryanoasis/vim-devicons'

" surround.vim
Plug 'tpope/vim-surround'

"""

call plug#end()

" Source Plugin Settings
source $HOME/.config/nvim/sources/plugin-settings/nerdcommenter.vim
source $HOME/.config/nvim/sources/plugin-settings/indent-blankline.vim
source $HOME/.config/nvim/sources/plugin-settings/airline.vim
source $HOME/.config/nvim/sources/plugin-settings/rainbow.vim
source $HOME/.config/nvim/sources/plugin-settings/neovimlsp.vim
source $HOME/.config/nvim/sources/plugin-settings/eslint.vim
