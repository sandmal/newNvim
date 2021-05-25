local config = require('plugins.config')
local p = { }

-- LSP
p['neovim/nvim-lspconfig'] = {
	
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
	requires = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim' },
}

p['hrsh7th/vim-vsnip'] = {
}

p['hrsh7th/nvim-compe'] = {
	config = config.compe
}

p['rafamadriz/friendly-snippets'] = {
}

p['nvim-treesitter/nvim-treesitter'] = {
	requires = { 'windwp/nvim-ts-autotag', },
}

p['lewis6991/gitsigns.nvim'] = {
	config = config.gitsigns
}

p['terrortylor/nvim-comment'] = {
}

p['kevinhwang91/nvim-bqf'] = {
}


p['norcalli/nvim-colorizer.lua'] = {
}

p['numtostr/FTerm.nvim'] = {
}

p['christoomey/vim-tmux-navigator'] = {
}

p['~/repos/nconf/statusbar'] = {
--p['sandmal/statusbar'] = {
	config = config.statusbar,
	disable = false 
}
return p
