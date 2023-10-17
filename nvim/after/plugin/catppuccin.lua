require("catppuccin").setup({
    transparent_background = true,
    integrations = {
        cmp = true,
        neotree = true,
    },
    styles = {
        comments = { "italic" },
    }
})
vim.cmd('colorscheme catppuccin')
