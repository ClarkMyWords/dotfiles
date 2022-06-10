" Adapted from @wuelnermartinez

" Install Vim Plugins
call plug#begin('~/local/share/nvim/plugged')

" vim-signify installation
Plug 'mhinz/vim-signify'

" vim-fugitive
Plug 'tpope/vim-fugitive'

" nerdtree installation
"Plug 'preservim/nerdtree' |
"            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
"            \ 
Plug 'ryanoasis/vim-devicons'

" airline installation
Plug 'vim-airline/vim-airline'

" ale
Plug 'dense-analysis/ale'
" neovim lsp
Plug 'neovim/nvim-lspconfig'

" Python
" Jedi
Plug 'davidhalter/jedi-vim'
" Neomake for Pylint
Plug 'neomake/neomake'

" Rust
Plug 'rust-lang/rust.vim'

" General formatting
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
Plug 'machakann/vim-highlightedyank'

" ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" fzf
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
"Plug 'junegunn/fzf.vim'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" You Complete Me
Plug 'Valloric/YouCompleteMe'

call plug#end()

