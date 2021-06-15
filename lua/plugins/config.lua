local config = { }

config.telescope = function()
end

config.comment = function()
	require('nvim_comment').setup()
end

config.instant = function()
 vim.g.instant_username = 'sandmal'
end

config.femboyf = function()
	require'femboyf'.setup {
		when = 'always',
		style = 'line',
}
end

config.colorizer = function ()
	require 'colorizer'.setup{}
end

config.colorscheme = function ()
	vim.api.nvim_command('colorscheme lunar')
end

config.treesitter = function ()
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}
end

config.statusbar = function()
	require('statusbar').setup{}
end

config.nvim_tree = function()
	vim.g.nvim_tree_disable_netrw = 0 -- "1 by default, disables netrw
	vim.g.nvim_tree_hide_dotfiles = 1 -- 0 by default, this option hides files and folders starting with a dot `.`
	vim.g.nvim_tree_indent_markers = 1 -- "0 by default, this option shows indent markers when folders are open
	vim.g.nvim_tree_follow = 1 -- "0 by default, this option allows the cursor to be updated when entering a buffer
	vim.g.nvim_tree_auto_close = 1
	local tree_cb = require'nvim-tree.config'.nvim_tree_callback
	vim.g.nvim_tree_icons = {
			default = '',
			symlink = '',
			git = {unstaged = "", staged = "✓", unmerged = "", renamed = "➜", untracked = ""},
			folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
	}
end

config.web_devicons = function()
	--nothing yet
end

config.gitsigns = function()
	require('gitsigns').setup {
		signs = {
			add          = {hl = 'GitSignsAdd'   , text = '▎', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
			change       = {hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
			delete       = {hl = 'GitSignsDelete', text = '契', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
			topdelete    = {hl = 'GitSignsDelete', text = '契', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
			changedelete = {hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
		},
	}
end

config.compe = function()
		vim.o.completeopt = "menuone,noselect"
		require'compe'.setup {
			enabled = true,
			autocomplete = true,
			debug = false,
			min_length = 1,
			preselect = 'enable',
			throttle_time = 80,
			source_timeout = 200,
			incomplete_delay = 400,
			max_abbr_width = 100,
			max_kind_width = 100,
			max_menu_width = 100,
			documentation = true,
			source = {
					path = {kind = "   (Path)"},
					buffer = {kind = "   (Buffer)"},
					calc = {kind = "   (Calc)"},
					vsnip = {kind = "   (Snippet)"},
					nvim_lsp = {kind = "   (LSP)"},
			nvim_lua = false,
					spell = {kind = "   (Spell)"},
					tags = false,
					-- vim_dadbod_completion = true,
					-- snippets_nvim = {kind = "  "},
					-- ultisnips = {kind = "  "},
					-- treesitter = {kind = "  "},
					emoji = {kind = " ﲃ  (Emoji)", filetypes={"markdown", "text"}}
					-- for emoji press : (idk if that in compe tho)
			}
	}

	--                 ﬘    m    

	local t = function(str)
		return vim.api.nvim_replace_termcodes(str, true, true, true)
	end

	local check_back_space = function()
			local col = vim.fn.col('.') - 1
			if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
					return true
			else
					return false
			end
	end

	-- Use (s-)tab to:
	--- move to prev/next item in completion menuone
	--- jump to prev/next snippet's placeholder
	_G.tab_complete = function()
		if vim.fn.pumvisible() == 1 then
			return t "<C-n>"
		elseif vim.fn.call("vsnip#available", {1}) == 1 then
			return t "<Plug>(vsnip-expand-or-jump)"
		elseif check_back_space() then
			return t "<Tab>"
		else
			return vim.fn['compe#complete']()
		end
	end

	_G.s_tab_complete = function()
		if vim.fn.pumvisible() == 1 then
			return t "<C-p>"
		elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
			return t "<Plug>(vsnip-jump-prev)"
		else
			return t "<S-Tab>"
		end
	end

	vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
	vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
	vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
	vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
end

return config
