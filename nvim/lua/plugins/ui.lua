return {
	{
		"zenbones-theme/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
	},
	{
		'nvim-lualine/lualine.nvim',
		init = function()
			require("lualine").setup({
				options = {
					icons_enabled = false,
					component_separators = { left = '|', right = '|' },
					section_separators = { left = '', right = '' },
					disabled_filetypes = {
						statusline = { "neo-tree" },
					},
					always_divide_middle = true,
				},
				sections = {
					lualine_a = { 'mode' },
					lualine_b = { "branch" },
					lualine_c = { { 'filename', path = 1 } },
					lualine_x = {
						'lsp_progress',
						{
							"diagnostics",
							symbols = {
								error = "󰅚 ",
								warn = "󰀪 ",
								hint = "󰌶 ",
								info = " ",
							},
						},
					},
					lualine_y = { "location" },
					lualine_z = {
						{ "filetype" },
						{
							function()
								local clients = vim.lsp.get_clients({ bufnr = 0 })
								if #clients == 0 then
									return ""
								end
								local names = {}
								for _, client in pairs(clients) do
									table.insert(names, client.name)
								end
								return table.concat(names, ', ')
							end,
						}
					},
				},
				extensions = { "neo-tree", "lazy" }
			})
		end,
	},
	{
		"folke/which-key.nvim"
	}
}
