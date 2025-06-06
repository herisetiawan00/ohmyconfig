local map = vim.keymap.set
local wk = require("which-key")
local dapui = require("dapui")

wk.add({ "<leader>d", group = "Debugger" })
map("n", "<leader>dc", "<cmd>DapContinue<cr>", { desc = "Continue" })
map("n", "<leader>dd", "<cmd>DapDisconnect<cr>", { desc = "Disconnect" })
map("n", "<leader>de", dapui.eval, { desc = "Eval" })
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "Toggle Breakpoint" })
map("n", "<leader>dx", "<cmd>DapClearBreakpoints<cr>", { desc = "Clear Breakpoints" })
map("n", "<leader>dt", "<cmd>DapTerminate<cr>", { desc = "Terminate" })
wk.add({ "<leader>ds", group = "Step" })
map("n", "<leader>dsi", "<cmd>DapStepInto<cr>", { desc = "Step Into" })
map("n", "<leader>dso", "<cmd>DapStepOut<cr>", { desc = "Step Out" })
map("n", "<leader>dsO", "<cmd>DapStepOver<cr>", { desc = "Step Over" })
