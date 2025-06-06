return {
-- 	{
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	opts = {
-- 		flavour = "mocha",
-- 		integrations = {
-- 			flash = true,
-- 			cmp = true,
-- 			indent_blankline = { enabled = true },
-- 			lsp_trouble = true,
-- 			native_lsp = {
-- 				enabled = true,
-- 				underlines = {
-- 					errors = { "undercurl" },
-- 					hints = { "undercurl" },
-- 					warnings = { "undercurl" },
-- 					information = { "undercurl" },
-- 				},
-- 			},
-- 			neotree = true,
-- 			noice = true,
-- 			notify = true,
-- 			telescope = true,
-- 			treesitter = true,
-- 			treesitter_context = true,
-- 		}
-- 	}
-- },
{
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    -- config = function()
    --     vim.g.zenbones_darken_comments = 45
    --     vim.cmd.colorscheme('zenbones')
    -- end
}
}
