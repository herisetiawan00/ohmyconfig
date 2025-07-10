return {
	{
		"akinsho/flutter-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim", "hrsh7th/nvim-cmp" },
		config = function()
			require('flutter-tools').setup {
				debugger = {
					enabled = true,
					run_via_dap = true,
					register_configurations = function(_)
						require("dap").adapters.dart = {
							type = "executable",
							command = "flutter",
							args = { "debug_adapter" }
						}

						require("dap").configurations.dart = {
							{
								type = "dart",
								request = "launch",
								name = "Launch flutter",
								program = "${workspaceFolder}/lib/main.dart",
								cwd = "${workspaceFolder}",
							}
						}
					end,
				},
				dev_log = {
					enabled = false,
					open_cmd = "tabedit",
				},
				lsp = {
					capabilities = require("cmp_nvim_lsp").default_capabilities,
				},

			}
		end
	},
	{
		"dart-lang/dart-vim-plugin"
	},
}
