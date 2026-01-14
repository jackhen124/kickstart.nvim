local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 	https://medium.com/@nikmas_dev/vscode-neovim-setup-keyboard-centric-powerful-reliable-clean-and-aesthetic-development-582d34297985
-- yank to system clipboard
keymap({ "n", "v" }, "<leader>y", '"+y', opts)

-- paste from system clipboard
keymap({ "n", "v" }, "<leader>p", '"+p', opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- paste preserves primal yanked piece, aka I can paste the same thing multiple times instead of copying the thing im pasting on
keymap("v", "p", '"_dP', opts)

-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

-- End of medium.com/@nikmas_dev/vscode-neovim-setup-keyboard-centric-powerful-reliable-clean-and-aesthetic-development-582d34297985

-- Defined by ME

-- File management
keymap({ "n", "v" }, "<leader><leader>", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
keymap({ "n", "v" }, "<leader><Tab>",
	"<cmd>lua require('vscode').action('workbench.action.openPreviousRecentlyUsedEditor')<CR>")
keymap({ "n", "v" }, "<leader>r", "<cmd>lua require('vscode').action('workbench.action.openRecent')<CR>")
keymap({ "n", "v" }, "<leader>w", "<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<CR>")

-- Sidebar
keymap({ "n", "v" }, "<leader>e", "<cmd>lua require('vscode').action('workbench.files.action.focusFilesExplorer')<CR>")

-- Terminal
keymap({ "n", "v" }, "<leader>t", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")

-- AI Chat
keymap({ "n", "v" }, "<leader>i", "<cmd>lua require('vscode').action('github.copilot.openChatPanel')<CR>")

-- navigation
keymap({ "n", "v" }, "<leader>gr", "<cmd>lua require('vscode').action('editor.action.goToReferences')<CR>")
keymap({ "n", "v" }, "<leader>gi", "<cmd>lua require('vscode').action('editor.action.goToImplementation')<CR>")
keymap({ "n", "v" }, "<leader>gt", "<cmd>lua require('vscode').action('editor.action.goToTypeDefinition')<CR>")
