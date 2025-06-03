return {
	cmd = { vim.fn.stdpath("config") .. "/script/kotlin-language-server/bin/kotlin-language-server" },
	filetypes = { "kotlin" },
	root_markers = {
		"settings.gradle",
		"settings.gradle.kts",
		".git"
	},
}
