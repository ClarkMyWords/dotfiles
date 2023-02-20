local set = vim.opt
local g = vim.g

-- System
g.python3_host_prog = "/usr/bin/python"
g.loaded_node_provider = 0
g.loaded_perl_provider = 0

-- Spell
set.spell = false

-- Tab behavior
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.smarttab = true
set.autoindent = false
set.smartindent = true

-- Folding
set.foldenable = true
set.foldmethod = "expr"
set.foldexpr = "nvim_treesitter#foldexpr()"

-- Autocmds
vim.api.nvim_create_autocmd({"BufWinEnter"}, {
    desc = "Open all folds on enteirng a file",
    pattern = "*",
    command = "silent! :%foldopen!",
})

-- Line Numbering
set.number = true
set.relativenumber = true

-- Other
set.ruler = true
set.cmdheight = 1

-- Signcolumn
set.signcolumn = "auto"

-- Search
set.ignorecase = true
set.smartcase = true
set.hlsearch = false

-- Lines
set.wrap = true

-- Clipboard
set.clipboard = "unnamedplus"

-- Appearance
set.list = true
set.listchars = {
    tab = "→ ",
    space = "·",
    lead = " ",
    nbsp = "␣",
    eol = "↲",
}
set.guifont = {"RobotMonoNerdFont Regular", ":h14"}

-- Keybinds
g.mapleader = " "
set.timeoutlen = 200
function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("i", "jka", "<Esc> A")
map("n", "oo", "o <Esc>")
map("n", "OO", "O <Esc>")

map("n", "<Leader>h", "<Cmd>set invhlsearch <CR>", {silent = true})

-- Searches
map("n", "n", "nzz")
map("n", "N", "Nzz")

map("n", "t", ":vsplit <CR> <Bar> <C-w><Right> <Bar> :term <CR>i")

-- Marks
map("n", ";", "`")
map("v", ";", "`")

-- Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
set.rtp:prepend(lazypath)

require("lazy").setup({
    -- Colors
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
        config = function()
            require("onedarkpro").setup({
                highlights = { --[[ Reference:
olimorris/onedarkpro.nvim/blob/main/lua/onedarkpro/highlights/editor.lua
]]
                    Error = { bg = "${red}", },
                    Visual = {
                        bg = "${white}",
                        fg = "${black}",
                    },
                    ColorColumn = { bg = "${red}", },
                    MatchParen = { bg = "${black}", },
                    Search = {
                        fg = "${black}",
                        bg = "${yellow}",
                    },
                    IncSearch = {
                        fg = "${black}",
                        bg = "${yellow}",
                    },
                },
                options = {transparency = false, },
            })
        end,
    },
    -- Backend
    {
        "nvim-treesitter/nvim-treesitter",
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    {
        "nvim-lua/plenary.nvim",
    },
    {
        "nvim-tree/nvim-web-devicons",
    },
    {
        "MunifTanjim/nui.nvim",
    },
    {
        "tpope/vim-repeat",
    },
    -- Required
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup()
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        keys = {
            { "<Leader>t", "<Cmd>Neotree toggle<CR>", desc = "NeoTree"},
        },
        config = function()
            require("neo-tree").setup({
                filesystem = {
                    filtered_items = {
                        visible = true,
                        hide_dotfiles = true,
                        hide_gitignored = true,
                    }
                }
            })
        end,
    },
    {
        "HiPhish/nvim-ts-rainbow2",
    },
    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup()
        end,
    },
    {
        "Vonr/align.nvim",
    },
    {
        "terrortylor/nvim-comment",
        config = function()
            require("nvim_comment").setup({
                comment_empty = false,
            })
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },
    {
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup({
                mapping = {"jk", "kj",},
                timeout = vim.o.timeoutlen,
                clear_empty_lines = false,
                keys = function()
                    return vim.api.nvim_win_get_cursor(0)[2] > 1 and "<Esc>l"
                    or "<Esc>"
            end,
            })
        end
    },
    {
        "bluz71/nvim-linefly",
    },
    {
        "m4xshen/smartcolumn.nvim",
        config = {
            colorcolumn = 81,
            disabled_filetypes = { "help", "text", "markdown", },
        },
    },
    {
        "ggandor/leap.nvim",
        config = function()
            require("leap").add_default_mappings()
        end
    },
    {
        "chentoast/marks.nvim",
        config = function()
            require("marks").setup({
                default_mappings = true,
            })
        end
    },
})

-- Linefly
g.linefly_options = {
    tabline = true,
    winbar = true,
    with_indent_status = true,
}

-- Colors
vim.cmd("colorscheme onedark_dark")
local color = require("onedarkpro.helpers")
local colors = color.get_colors()
-- Rainbow
require("nvim-treesitter.configs").setup{
    rainbow = {
        enable = true,
        query = "rainbow-parens",
        strategy = require "ts-rainbow.strategy.global"
    }
}
-- Alignment
-- align_to_char(length, reverse, preview, marks)
-- align_to_string(is_pattern, reverse, preview, marks)
-- align(str, reverse, marks)
-- operator(fn, opts)
-- Where:
--      length: integer
--      reverse: boolean
--      preview: boolean
--      marks: table (e.g. {1, 0, 23, 15})
--      str: string (can be plaintext or Lua pattern if is_pattern is true)

local NS = { noremap = true, silent = true }

vim.keymap.set('x', 'aa', function() 
                require'align'.align_to_char(1, true)
        end, NS) -- Aligns to 1 character, looking left
vim.keymap.set('x', 'as', function()
                require'align'.align_to_char(2, true, true)
        end, NS) -- Aligns to 2 characters, looking left and with previews
vim.keymap.set('x', 'aw', function()
                require'align'.align_to_string(false, true, true)
        end, NS) -- Aligns to a string, looking left and with previews
vim.keymap.set('x', 'ar', function()
                require'align'.align_to_string(true, true, true)
        end, NS) -- Aligns to a Lua pattern, looking left and with previews
