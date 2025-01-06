Pckr = require 'pckr'

Pckr.add({
	{ "neovim/nvim-lspconfig" },
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require 'nvim-treesitter.configs'.setup {
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
				highlight = { enable = true },
			}
		end
	},
	{ "jaredgorski/fogbell.vim" },
	{ "ficcdaf/ashen.nvim" },
	{ "scottmckendry/cyberdream.nvim" },
	{
		"folke/flash.nvim",
		config = function()
			vim.keymap.set({ "n" }, "f", function() require("flash").remote() end)
		end
	},
	{ "tpope/vim-surround" },
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-commentary" },
	{ "tpope/vim-endwise" },
	{
		"kien/ctrlp.vim",
		config = function()
			vim.keymap.set("n", "<C-p>", ":CtrlPMixed")
		end
	},
})
