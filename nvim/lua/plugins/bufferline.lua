return {
	{
		'akinsho/bufferline.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			local bufferline = require('bufferline')
			require("bufferline").setup({
				options = {
					separator_style = "slope",
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							text_align = "center",
							separator = true,
						}
					},
				}
			})
		end,
	}
}
