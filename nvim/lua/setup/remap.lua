
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- This is going to get me cancelled
-- vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<C-n>", function()
    vim.cmd("Neotree")
end)

-- Remaps vimsplit focus navigation
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")

-- Remaps vimsplit window navigation
vim.keymap.set("n", "<A-J>", "<C-w>J")
vim.keymap.set("n", "<A-H>", "<C-w>H")
vim.keymap.set("n", "<A-K>", "<C-w>K")
vim.keymap.set("n", "<A-L>", "<C-w>L")

-- Toggle nvim terminal
vim.keymap.set("n", "<C-t>",":sp<bar>term<cr><c-w>J:resize10<cr>")

-- Remaps terminal normal mode
vim.keymap.set("t", "<leader><ESC>", "<C-\\><c-n>")
