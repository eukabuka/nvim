local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")
lspconfig.rust_analyzer.setup({
	filetypes = {"rust"},
	root_dir = util.root_pattern("Cargo.toml"),
	settings = {
		['rust-analyzer'] = {
			cargo = {
				allFeatures = true,
			}
		}
	}
})
