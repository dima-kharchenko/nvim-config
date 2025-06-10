return {
	{'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/nvim-cmp'},
		{'L3MON4D3/LuaSnip'},
	config = function()
		local lsp = require("lsp-zero").preset("recommended")

		lsp.ensure_installed({'pyright'})
		lsp.configure('pyright', {
			settings = {
				python = {
					analysis = {
						typeCheckingMode = "basic",
						autoSearchPaths = true,
						useLibraryCodeForTypes = true,
					}
				}
			}
		})

		local cmp = require("cmp")
		cmp.setup({
			mapping = {
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
			}
		})

		lsp.setup()
	end,
}
