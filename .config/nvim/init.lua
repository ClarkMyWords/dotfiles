local set = vim.opt
local g = vim.g

-- System
g.python3_host_prog = "/usr/bin/python3"
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

-- -- Folding
-- set.foldenable = true
-- set.foldmethod = "expr"
-- set.foldexpr = "nvim_treesitter#foldexpr()"
-- 
-- -- Autocmds
-- vim.api.nvim_create_autocmd({"BufWinEnter"}, {
--     desc = "Open all folds on enteirng a file",
--     pattern = "*",
--     command = "silent! :%foldopen!",
-- })

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

map("n", "<Leader>h", "<Cmd>set invhlsearch <CR>", {silent = true})

-- Marks
-- map("n", ";", "`")
-- map("v", ";", "`")

