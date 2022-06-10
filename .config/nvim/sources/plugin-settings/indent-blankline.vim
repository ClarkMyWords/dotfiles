lua << EOF

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#00FF00 gui=nocombine]]

require("indent_blankline").setup {
    char_highlight_list = {
        "IndentBlanklineIndent1",
    },
}

EOF
