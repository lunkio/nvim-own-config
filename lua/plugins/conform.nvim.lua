return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	opts = {
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt", lsp_format = "fallback" },
			c = { "clang-format", lsp_format = "fallback" },
		},
	},
}
