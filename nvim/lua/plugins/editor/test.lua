return {
	{ "sidlatau/neotest-dart" },
	{ "nvim-neotest/neotest-jest" },
	{ "codymikol/neotest-kotlin" },
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"sidlatau/neotest-dart",
			"nvim-neotest/neotest-jest",
			"codymikol/neotest-kotlin",
		},
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-kotlin"),
					require('neotest-dart') {
						command = 'flutter',
						use_lsp = true,
						cwd = function()
							local path = vim.fn.expand("%:p:h")
							while path and path ~= "/" do
								if vim.fn.filereadable(path .. "/pubspec.yaml") == 1 then
									return path
								end
								path = vim.fn.fnamemodify(path, ":h")
							end
							return vim.fn.getcwd()
						end
					},
					require('neotest-jest') {
						jestCommand = "npm test --",
						jestConfigFile = "custom.jest.config.ts",
						env = { CI = true },
						cwd = function()
							return vim.fn.getcwd()
						end,
					},

				}
			});
		end
	},
}
