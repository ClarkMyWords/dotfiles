-- Source: https://github.com/gwww/dotfiles/blob/main/.config/astronvim/lua/user/plugins/heirline.lua
local ruler = { provider = " %4l/%L:%-3c %3p%%" }

return {
    {
        hl = { fg = "fg", bg = "bg" },
        astronvim.status.component.mode(),
        astronvim.status.component.git_branch(),
        astronvim.status.component.file_info(
            astronvim.is_available "bufferline.nvim" and { filetype = {}, filename = false, file_modified = false } or
            nil
        ),
        astronvim.status.component.git_diff(),
        astronvim.status.component.diagnostics(),
        astronvim.status.component.fill(),
        astronvim.status.component.cmd_info(),
        astronvim.status.component.fill(),
        astronvim.status.component.lsp(),
        astronvim.status.component.treesitter(),
        astronvim.status.component.nav(),
        ruler,
        astronvim.status.component.mode { surround = { separator = "right" } },
    },
}
