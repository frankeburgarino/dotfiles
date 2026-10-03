return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})
			local gitsigns = require('gitsigns')

			vim.keymap.set('n', '<leader>gs', gitsigns.stage_hunk)
			vim.keymap.set('n', '<leader>gr', gitsigns.reset_hunk)

			vim.keymap.set('v', '<leader>gs', function()
				gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
			end)

			vim.keymap.set('v', '<leader>gr', function()
				gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
			end)

			vim.keymap.set('n', '<leader>gS', gitsigns.stage_buffer)
			vim.keymap.set('n', '<leader>gR', gitsigns.reset_buffer)
			vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk)
			vim.keymap.set('n', '<leader>gi', gitsigns.preview_hunk_inline)

			vim.keymap.set('n', '<leader>gb', function()
				gitsigns.blame_line({ full = true })
			end)

			vim.keymap.set('n', '<leader>gB', gitsigns.blame)

			vim.keymap.set('n', '<leader>gd', gitsigns.diffthis)

			vim.keymap.set('n', '<leader>gD', function()
				gitsigns.diffthis('~')
			end)

			vim.keymap.set('n', '<leader>gQ', function() gitsigns.setqflist('all') end)
			vim.keymap.set('n', '<leader>gq', gitsigns.setqflist)
		end
	}
}
