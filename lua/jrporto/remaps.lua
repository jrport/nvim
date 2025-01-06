vim.g.mapleader = " "

local k = vim.keymap.set
k("n", "<leader><leader>", ":write<CR>", { silent = true })
k("n", "<leader>pv", ":Ex<CR>", { silent = true })
k("n", "<C-q>", ":q!<CR>", { silent = true })

k("n", "K", ":lua vim.lsp.buf.hover()<CR>", { silent = true })
k("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { silent = true })
k("n", "<C-r>", ":lua vim.lsp.buf.rename()<CR>", { silent = true })
k("n", "gr", ":lua vim.lsp.buf.references()<CR>", { silent = true })
k("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", { silent = true })
k("n", "<A-l>", ":lua vim.lsp.buf.format()<CR>", { silent = true })

k("t", "<Esc>", "<C-/><C-n>", { silent = true })
k("n", "<Esc>", ":noh<CR>", { silent = true })
