return {
	cmd = { "dart", "language-server", "--protocol=lsp" },
	filetypes = { "dart" },
	root_markers = { "pubspec.yaml" },
	capabilities = (function()
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.workspace.configuration = true
		capabilities.workspace.workspaceEdit.documentChanges = true
		capabilities.textDocument.completion.completionItem.snippetSupport = true
		capabilities.textDocument.documentColor = { dynamicRegistration = true }
		capabilities.textDocument.completion.completionItem.resolveSupport = {
			properties = { "documentation", "detail", "additionalTextEdits" },
		}
		return capabilities
	end)(),
	init_options = {
		onlyAnalyzeProjectsWithOpenFiles = true,
		suggestFromUnimportedLibraries = true,
		closingLabels = true,
		outline = true,
		flutterOutline = true,
	},
	settings = {
		dart = {
			completeFunctionCalls = true,
			showTodos = true,
			analysisExcludedFolders = {},
			updateImportsOnRename = true,
		},
	},
}
