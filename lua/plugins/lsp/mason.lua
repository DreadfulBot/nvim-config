local mason_status, mason = pcall(require, "mason")
if not mason_status then
	print("mason load error")
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	print("mason lsp config load error")
	return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	print("mason null ls load error")
	return
end

mason.setup({
	PATH = "prepend", -- 'skip' seems to cause the spawning error
})

mason_lspconfig.setup({
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"sumneko_lua",
		"omnisharp",
		"dockerls",
		"eslint",
		"graphql",
		"jsonls",
		"remark_ls",
		"intelephense",
		"pyright",
		"solc",
	},
})

mason_null_ls.setup({
	ensure_installed = {
		"prettier",
		"clang_format",
		"stylua",
		"eslint_d",
		"write_good",
		"csharpier",
		"pylint",
		"solhint",
		"sqlfluff",
	},
})
