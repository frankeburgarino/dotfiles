local colors = {
	bg						= '#16181a',
	bg_alt				= '#1e2124',
	bg_highlight	= '#3c4048',
	fg						= '#ffffff',
	grey					= '#7b8496',
	blue					= '#5ea1ff',
	green					= '#5eff6c',
	cyan					= '#5ef1ff',
	red						= '#ff6e5e',
	yellow				= '#f1ff5e',
	magenta				= '#ff5ef1',
	pink					= '#ff5ea0',
	orange				= '#ffbd5e',
	purple				= '#bd5eff',
}

local M = {
	normal = {
		a = { bg = colors.blue, fg = colors.bg_highlight, gui = 'bold' },
		b = { bg = colors.cyan, fg = colors.bg_highlight },
		c = { bg = colors.fg, fg = colors.bg_highlight },
	},
	insert = {
		a = { bg = colors.green, fg = colors.bg_highlight, gui = 'bold' },
		b = { bg = colors.cyan, fg = colors.bg_highlight },
		c = { bg = colors.fg, fg = colors.bg_highlight },
	},
	visual = {
		a = { bg = colors.magenta, fg = colors.bg_highlight, gui = 'bold' },
		b = { bg = colors.cyan, fg = colors.bg_highlight },
		c = { bg = colors.fg, fg = colors.bg_highlight },
	},
	replace = {
		a = { bg = colors.red, fg = colors.bg_highlight, gui = 'bold' },
		b = { bg = colors.cyan, fg = colors.bg_highlight },
		c = { bg = colors.fg, fg = colors.bg_highlight },
	},
	command = {
		a = { bg = colors.yellow, fg = colors.bg_highlight, gui = 'bold' },
		b = { bg = colors.cyan, fg = colors.bg_highlight },
		c = { bg = colors.fg, fg = colors.bg_highlight },
	},
	inactive = {
		a = { bg = colors.bg_highlight, fg = colors.grey, gui = 'bold' },
		b = { bg = colors.cyan, fg = colors.bg_highlight },
		c = { bg = colors.fg, fg = colors.bg_highlight },
	},
}

M.terminal = M.insert

return M
