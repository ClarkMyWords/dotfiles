" Config from sidebar-nvim/sidebar.nvim

lua << EOF
require("sidebar-nvim").setup({
open = true,
sections = {"files", "buffers", "diagnostics", "git", "todos"},
disable_closing_prompt = true,
})
EOF

