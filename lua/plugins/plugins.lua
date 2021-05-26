local config = require('plugins.config')
local p = { }

-- LSP
p['neovim/nvim-lspconfig'] = {

}

p['3lv/femboyf'] = {
	config = config.femboyf
}

p['sandmal/colorscheme'] = {
	config = config.colorscheme,
	disable = true
}


p['3lv/femboyscheme'] = {
	config = config.colorscheme,
	disable = false 
}

p['norcalli/nvim-colorizer.lua'] = {
	config = config.colorizer
}


p['glepnir/lspsaga.nvim'] = {

}

p['kabouzeid/nvim-lspinstall'] = {

}

p['kyazdani42/nvim-tree.lua'] = {
	config = config.nvim_tree,
}

p['kyazdani42/nvim-web-devicons'] = {
	-- no need yet
}

p['nvim-telescope/telescope.nvim'] = {
	-- no need yet
	-- requires = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim' },
	disable = true
}

p['hrsh7th/vim-vsnip'] = {
}

p['hrsh7th/nvim-compe'] = {
	config = config.compe
}

p['rafamadriz/friendly-snippets'] = {
}

p['nvim-treesitter/nvim-treesitter'] = {
	requires = { 'windwp/nvim-ts-autotag' },
	config = config.treesitter
}

p['lewis6991/gitsigns.nvim'] = {
	config = config.gitsigns,
	requires = {'nvim-lua/plenary.nvim'}
}

p['terrortylor/nvim-comment'] = {
	config = config.comment,
	disable = false
}

p['kevinhwang91/nvim-bqf'] = {
	disable = true
}

p['norcalli/nvim-colorizer.lua'] = {

}

p['christoomey/vim-tmux-navigator'] = {
}

p['~/repos/nconf/statusbar'] = {
--p['sandmal/statusbar'] = {
	config = config.statusbar,
	disable = false
}

return p
