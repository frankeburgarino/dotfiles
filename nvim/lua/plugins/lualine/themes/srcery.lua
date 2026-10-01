local colors = {
	bg						= '#121110',
	bg_alt				= '#1C1B19',
	bg_highlight	= '#312F2C',
	fg						= '#C5B088',
	grey					= '#3B3935',
	blue					= '#2C78BF',
	green					= '#519F50',
	cyan					= '#0AAEB3',
	red						= '#EF2F27',
	yellow				= '#FBB829',
	magenta				= '#E02C6D',
	orange				= '#FF5F00',
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
