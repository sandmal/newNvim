	-- I live better without thise options:
	-- clipboard = 'unnamedplus',
	-- number = true,
	-- relativenumber = true,
local global_settings = {
	inccommand = 'split',
	hidden = true,
	pumblend = 10,
	mouse = 'a',
	termguicolors = true,
	autoindent = true,
	showtabline = 1,
	showmode = false,
	undofile = true,
	signcolumn = 'true',
	shortmess = 'filnxtToOFI'
}

local bw_settings = {
	wrap = true,
	linebreak = true,
	tabstop = 2,
	shiftwidth = 0,
}

for k, v in pairs(global_settings) do
	vim.o[k] = v
end

for k, v in pairs(bw_settings) do
	if type(v) == 'boolean' then
		vim.api.nvim_command('set '..k)
	else
		vim.api.nvim_command('set '..k..'='..v)
	end
end

