return {
	{ "MeanderingProgrammer/render-markdown.nvim" },
	{
		"goerz/jupytext.nvim",
		opts = {
			jupytext = 'jupytext',
			format = "markdown",
			update = true,
			sync_patterns = { '*.ipynb' },
			autosync = true,
			handle_url_schemes = true,
		}
	}
}
