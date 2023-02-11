local set = vim.opt
local g = vim.g

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
set.colorcolumn = "80"
-- vim.api.nvim_set_hl(0, "ColorColumn", {fg=Red, bg=Red})
vim.api.nvim_set_hl(0, "Normal", {fg=Black, bg=Yellow})

--[[ vim.options.clark_theme.colors = {
    fg = "#FFFFFF",
    bg = "#202020",
    black = "#000000",
    red = "#AC2020",
    green = "#20AC20",
    yellow = "#ACAC20",
    blue = "#2020AC",
    magenta = "#AC20AC",
    cyan = "#20ACAC",
    white = "#ACACAC",

}
vim.colorscheme = "clark_theme" ]]

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

map("i", "jka", "<esc>A")
map("n", "oo", "o<esc>")
map("n", "OO", "O<esc>")
-- What is this hack?
map("n", "<Leader>h", ":set invhlsearch<CR><CR>k", {silent = true})

-- Searches
map("n", "n", "nzz")
map("n", "N", "Nzz")

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
            { "<leader>t", "<cmd>Neotree toggle<cr>", desc = "NeoTree"},
        },
        config = function()
            require("neo-tree").setup()
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
        "Vonr/align.nvim"
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
                mapping = {"jk", "kj"},
                timeout = vim.o.timeoutlen,
                clear_empty_lines = false,
                keys = function()
                    return vim.api.nvim_win_get_cursor(0)[2] > 1 and "<Esc>l" or "<Esc"
                end,
            })
        end
    },
    -- {
    --     "rebelot/heirline.nvim",
    --     config = function()
    --         require("heirline").setup({

    --         })
    --     end
    -- },
})

-- Colors
vim.cmd("colorscheme onedark_dark")
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

vim.keymap.set('x', 'aa', function() require'align'.align_to_char(1, true)             end, NS) -- Aligns to 1 character, looking left
vim.keymap.set('x', 'as', function() require'align'.align_to_char(2, true, true)       end, NS) -- Aligns to 2 characters, looking left and with previews
vim.keymap.set('x', 'aw', function() require'align'.align_to_string(false, true, true) end, NS) -- Aligns to a string, looking left and with previews
vim.keymap.set('x', 'ar', function() require'align'.align_to_string(true, true, true)  end, NS) -- Aligns to a Lua pattern, looking left and with previews
