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
	{ "tpope/vim-surround" },
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-commentary" },
	{ "tpope/vim-endwise" },
	{ "echasnovski/mini.pairs",       config = function() require 'mini.pairs'.setup() end },
	{
		"kien/ctrlp.vim",
		config = function()
			vim.keymap.set("n", "<C-p>", ":CtrlPMixed")
		end
	},
	{
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp"
		},
		config = function()
			local cmp = require 'cmp'
			cmp.setup {
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.abort(),
					['<CR>'] = cmp.mapping.confirm({ select = true }), 
				}),
				sources = {
					{ name = 'nvim_lsp' }
				}
			}
		end
	},
})
