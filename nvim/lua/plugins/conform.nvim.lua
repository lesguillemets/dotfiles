return{
	'stevearc/conform.nvim',
	opts = {
		formatters_by_ft = {
			python = { "ruff_format", "ruff_organize_imports" },
			rust = { "rustfmt", lsp_format = "fallback"},
		},
		format_on_save = {
			timeout_ms = 1000,
			lsp_format = "fallback",
		},
	},
}

