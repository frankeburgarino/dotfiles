return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})
			local gitsigns = require('gitsigns')
			vim.keymap.set('n', '<leader>gd', gitsigns.diffthis)
			vim.keymap.set('n', '<leader>gb', gitsigns.blame)
		end
	}
}
