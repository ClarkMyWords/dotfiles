" Neovim configs adapated from @wuelnermartinez
" github.com/wuelnermartinez

" FILE CONFIG INIT.VIM FOR NEOVIM SETTINGS

"Import general settings files:
source /home/clark/.config/nvim/sources/settings.vim

" Import plugins
source /home/clark/.config/nvim/sources/plugins.vim

" Import keybindings file:
source /home/clark/.config/nvim/sources/key-maps.vim

lua <<EOF
  local set = vim.opt
  vim.cmd[[colorscheme noctu]]
EOF

