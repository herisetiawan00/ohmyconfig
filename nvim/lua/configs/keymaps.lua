local map = vim.keymap.set;

map('x', 'Y', '"+y', { desc = "Global Copy" })
map('x', 'P', '"+p', { desc = "Global Paste" })

map("n", "<C-e>", "<cmd>NvimTreeToggle<cr>", { desc = "Nvim Tree Toggle"});

map("n", "<C-l>", "<cmd>vertical resize +5<cr>", { desc = "Resize Window Bigger Vertically" })
map("n", "<C-h>", "<cmd>vertical resize -5<cr>", { desc = "Resize Window Smaller Vertically" })
map("n", "<C-k>", "<cmd>horizontal resize +5<cr>", { desc = "Resize Window Bigger Horizontally" })
map("n", "<C-j>", "<cmd>horizontal resize -5<cr>", { desc = "Resize Window Bigger Horizontally" })

map("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code Action" })
map("n", "<leader>lf", vim.lsp.buf.definition, { desc = "Definition" })
map("n", "<leader>lc", vim.lsp.buf.declaration, { desc = "Declaration" })
map("n", "<leader>ls", vim.lsp.buf.references, { desc = "References" })
map("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })
map(
	"n",
	"<Leader>ll",
	function()
		local config = vim.diagnostic.config();
		vim.diagnostic.config({
			virtual_text = not config.virtual_text,
			virtual_lines = not config.virtual_lines,
		})
	end,
	{ desc = "Toggle Diagnostic Line" }
);

map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Buffers" })
map("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>", { desc = "Grep" })
map("n", "<leader>fG", "<cmd>FzfLua git_files<cr>", { desc = "Git Files" })
map("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Files" })
map("n", "<leader>fr", "<cmd>FzfLua recent<cr>", { desc = "Recent" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Buffers" })
map("n", "<leader>fa", "<cmd>FzfLua autocmds<cr>", { desc = "Autocmds" })
map("n", "<leader>fc", "<cmd>FzfLua command_history<cr>", { desc = "Command History" })
map("n", "<leader>fC", "<cmd>FzfLua commands<cr>", { desc = "Commands" })
map("n", "<leader>fh", "<cmd>FzfLua help<cr>", { desc = "Help" })
map("n", "<leader>fH", "<cmd>FzfLua highlights<cr>", { desc = "Highlights" })
map("n", "<leader>fk", "<cmd>FzfLua keymaps<cr>", { desc = "Keymaps" })
map("n", "<leader>fM", "<cmd>FzfLua manpages<cr>", { desc = "Manuals" })
map("n", "<leader>fm", "<cmd>FzfLua marks<cr>", { desc = "Marks" })
map("n", "<leader>of", "<cmd>Other<cr>", { desc = "Files" })
map("n", "<leader>os", "<cmd>OtherSplit<cr>", { desc = "Files (split)" })
map("n", "<leader>ov", "<cmd>OtherVSplit<cr>", { desc = "Files (v-split)" })

-- local neotest = require("neotest");
--
-- map("n", "<leader>tr", neotest.run.run, { desc = "Run Nearest Test"})
-- map("n", "<leader>tf", function() neotest.run.run(vim.fn.expand("%")) end, { desc = "Run Test File"})
-- map("n", "<leader>ts", neotest.run.stop, { desc = "Stop Test"})
-- map("n", "<leader>ta", neotest.run.attach, { desc = "Attach Nearest Test"})

local neotest = require("neotest")

vim.keymap.set("n", "<leader>tn", function() neotest.run.run() end, { desc = "Run nearest test" })

vim.keymap.set("n", "<leader>tf", function() neotest.run.run(vim.fn.expand("%")) end, { desc = "Run tests in current file" })

vim.keymap.set("n", "<leader>tl", function() neotest.run.run_last() end, { desc = "Run last test" })

vim.keymap.set("n", "<leader>ts", function() neotest.run.stop() end, { desc = "Stop running test" })

vim.keymap.set("n", "<leader>tt", function() neotest.summary.toggle() end, { desc = "Toggle test summary" })

vim.keymap.set("n", "<leader>to", function() neotest.output_panel.toggle() end, { desc = "Toggle output panel" })

vim.keymap.set("n", "<leader>tp", function() neotest.output.open({ enter = true }) end, { desc = "Show output for nearest test" })

vim.keymap.set("n", "<leader>tw", function() neotest.watch.toggle() end, { desc = "Toggle watch for nearest test" })
