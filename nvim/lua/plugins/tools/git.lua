return {
	{
		"f-person/git-blame.nvim",
		event = "VeryLazy",
		opts = {},

	},
	{
		'akinsho/git-conflict.nvim',
		version = "*",
		config = function()
			require("git-conflict").setup({
				default_mappings = false
			})
		end
	}
}
