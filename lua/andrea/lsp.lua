-- lua/andrea/lsp.lua

local lspconfig = require('lspconfig')



-- Function to simplify setting up LSP servers
local function setup(server, opts)
	opts = opts or {}
	lspconfig[server].setup(opts)
end

-- Setup clangd for C/C++
setup('clangd')

-- Setup pyright for Python
setup('pyright')

-- Setup lua_ls for Lua
setup('lua_ls', {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }, -- Recognize 'vim' as a global
			},
		},
	},
})

-- jump to definition
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to Implementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find References" })

-- Optional: Better LSP UI
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
})

