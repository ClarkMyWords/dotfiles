return {
  -- first key is the mode
  n = {
    -- Recommende buffer tools
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

    -- Preferred basic stuff
    ["oo"] = { "o<esc>", desc = "Insert blank line below" },
    ["OO"] = { "O<esc>", desc = "Insert blank line above" },

    ["n"] = { "nzz" },
    ["N"] = { "Nzz" },
    ["*"] = { "*zz" },
    ["#"] = { "#zz" },
    ["g*"] = { "g*zz" },
    ["g#"] = { "g#zz" },
  },
  i = {
    ["jka"] = { "<esc>A", desc = "Jump to EOL" },
  },
}
