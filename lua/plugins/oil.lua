-- Oil.nvim - file explorer that lets you edit your filesystem like a buffer
--
return {
	'stevearc/oil.nvim',
	opts = {},
	-- Optional dependencies
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	keys = {
		{ '<leader>eo', '<cmd>Oil<cr>', desc = 'File [E]xplorer [O]il' },
	},
}
