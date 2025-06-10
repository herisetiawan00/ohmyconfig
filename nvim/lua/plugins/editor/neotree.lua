return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		sources = { "filesystem", "buffers", "git_status" },
		open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
		filesystem = {
			bind_to_cwd = false,
			follow_current_file = { enabled = true },
			use_libuv_file_watcher = true,
		},
		source_selector = {
			statusline = false,
		},
		commands = {
			copy_selector = function(state)
				local node = state.tree:get_node()
				local filepath = node:get_id()
				local filename = node.name
				local modify = vim.fn.fnamemodify

				local vals = {
					["Base name"] = modify(filename, ":r"),
					["Extension"] = modify(filename, ":e"),
					["File name"] = filename,
					["Path ($CWD)"] = modify(filepath, ":."),
					["Path ($HOME)"] = modify(filepath, ":~"),
					["Path"] = filepath,
				}

				local options = vim.tbl_filter(
					function(val)
						return vals[val] ~= ""
					end,
					vim.tbl_keys(vals)
				)
				if vim.tbl_isempty(options) then
					vim.notify("No values to copy", vim.log.levels.WARN)
					return
				end
				table.sort(options)
				vim.ui.select(options, {
					prompt = "Choose to copy to clipboard:",
					format_item = function(item)
						return ("%s: %s"):format(item, vals[item])
					end,
				}, function(choice)
					local result = vals[choice]
					if result then
						vim.notify(("Copied: `%s`"):format(result))
						vim.fn.setreg("+", result)
					end
				end)
			end,
		},
		window = {
			width = 40,
			position = "left",
			mappings = {
				["l"] = "open",
				['Y'] = "copy_selector",
			},
		},
		default_component_configs = {
			diagnostics = {
				symbols = {
					error = "󰅚 ",
					warn = "󰀪 ",
					hint = "󰌶 ",
					info = " ",
				},
				highlights = {
					hint = "DiagnosticSignHint",
					info = "DiagnosticSignInfo",
					warn = "DiagnosticSignWarn",
					error = "DiagnosticSignError",
				},
			},
			indent = {
				with_expanders = true,
				expander_collapsed = "",
				expander_expanded = "",
				expander_highlight = "NeoTreeExpander",
			},
			modified = {
				symbol = "[+]",
				highlight = "NeoTreeModified",
			},
			git_status = {
				symbols = {
					unstaged = "󰄱",
					staged = "󰱒",
				},
			},
		},
	},
}
