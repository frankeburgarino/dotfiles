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
		b = { bg = colors.bg_highlight, fg = colors.blue },
		c = { bg = colors.bg_alt, fg = colors.fg },
	},
	insert = {
		a = { bg = colors.green, fg = colors.bg_highlight, gui = 'bold' },
		b = { bg = colors.bg_highlight, fg = colors.green },
		c = { bg = colors.bg_alt, fg = colors.fg },
	},
	visual = {
		a = { bg = colors.magenta, fg = colors.bg_highlight, gui = 'bold' },
		b = { bg = colors.bg_highlight, fg = colors.magenta },
		c = { bg = colors.bg_alt, fg = colors.fg },
	},
	replace = {
		a = { bg = colors.red, fg = colors.bg_highlight, gui = 'bold' },
		b = { bg = colors.bg_highlight, fg = colors.red },
		c = { bg = colors.bg_alt, fg = colors.fg },
	},
	command = {
		a = { bg = colors.yellow, fg = colors.bg_highlight, gui = 'bold' },
		b = { bg = colors.bg_highlight, fg = colors.yellow },
		c = { bg = colors.bg_alt, fg = colors.fg },
	},
	inactive = {
		a = { bg = colors.grey, fg = colors.fg, gui = 'bold' },
		b = { bg = colors.bg_highlight, fg = colors.grey },
		c = { bg = colors.bg_alt, fg = colors.fg },
	},
}

M.terminal = M.insert

return M
