return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	opts = function(_, opts)
		opts.formatters_by_ft = opts.formatters_by_ft or {}
		opts.formatters_by_ft.c = { "kernel_clang" }
		opts.formatters_by_ft.cpp = { "clang-format" }
		opts.formatters_by_ft.h = { "kernel_clang" }
		opts.formatters_by_ft.hpp = { "clang-format" }
		opts.formatters_by_ft.lua = { "stylua" }

		opts.formatters = opts.formatters or {}

		opts.formatters.kernel_clang = {
			command = "clang-format",
			args = function()
				local user = os.getenv("USER")
				if not user then
					vim.notify("无法获取用户名，请手动设置路径", vim.log.levels.ERROR)
					return {}
				end
				local config_path = "/home/" .. user .. "/.config/nvim/.clang-format"

				if vim.fn.filereadable(config_path) == 0 then
					vim.notify("❌ 错误：找不到内核配置文件！\n路径：", vim.log.levels.ERROR)
					return { "--style=file:" .. config_path, "--fallback-style=none" }
				end

				return {
					"--style=file:" .. config_path,
					"--fallback-style=none",
				}
			end,
			stdin = true,
		}
	end,
}
