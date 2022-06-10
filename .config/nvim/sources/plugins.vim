" Adapted from @wuelnermartinez

" Install Vim Plugins
call plug#begin('~/local/share/nvim/plugged')

" vim-signify installation
Plug 'mhinz/vim-signify'

" vim-fugitive
" Plug 'tpope/vim-fugitive'

" airline installation
Plug 'vim-airline/vim-airline'

Plug 'sheerun/vim-polyglot'

Plug 'luochen1990/rainbow'

" Plug 'vim-syntastic/syntastic'

" ale
" Plug 'dense-analysis/ale'
" neovim lsp
" Plug 'neovim/nvim-lspconfig'

" Python
" Jedi
" Plug 'davidhalter/jedi-vim'
" Neomake for Pylint
" Plug 'neomake/neomake'

" Rust
" Plug 'rust-lang/rust.vim'

" General formatting
Plug 'jiangmiao/auto-pairs'
Plug 'lukas-reineke/indent-blankline.nvim'

" NERD Commenter
Plug 'preservim/nerdcommenter'

" ultisnips
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Markdown Preview
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Noctu color scheme
Plug 'noahfrederick/vim-noctu'

" vim devicons
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Source Plugin Settings
source $HOME/.config/nvim/sources/plugin-settings/nerdcommenter.vim
source $HOME/.config/nvim/sources/plugin-settings/indent-blankline.vim
source $HOME/.config/nvim/sources/plugin-settings/airline.vim
source $HOME/.config/nvim/sources/plugin-settings/rainbow.vim
" source $HOME/.config/nvim/sources/plugin-settings/syntastic.vim

