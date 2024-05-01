require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>fm", function()
  require("conform").format {async = true, lsp_fallback = true}
end, { desc = "Format file" })

map("n", "<leader>a", ":RustLsp codeAction <cr>")

map("i", "<c-j>", "<Esc>:m .+1<CR>==gi")
map("i", "<c-k>", "<Esc>:m .-2<CR>==gi")
map("v", "<c-j>", ":m '>+1<CR>gv=gv")
map("v", "<c-k>", ":m '<-2<CR>gv=gv")

map("n", "<leader>cp", ":cprevious <cr>")
map("n", "<leader>cn", ":cnext <cr>")
map("n", "<leader>cc", ":cclose <cr>")
