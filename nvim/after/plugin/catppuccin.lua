require("catppuccin").setup({
    transparent_background = false,
    integrations = {
        cmp = true,
        neotree = true,
    },
    styles = {
        comments = { "italic" },
    }
})
vim.cmd('colorscheme catppuccin')
