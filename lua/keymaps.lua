local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- set leader
map('n', '<Space>', '<NOP>', opts)
vim.g.mapleader = ' '

-- telescope
map('n', '<Leader>f', ':Telescope find_files<CR>', opts)
map('n', '<Leader>w', ':Telescope live_grep<CR>', opts)
map('n', '<Leader>g', ':Telescope git_branches<CR>', opts)
map('n', '<Leader>r', ':Telescope registers<CR>', opts)
map('n', '<Leader>b', ':Telescope buffers<CR>', opts)
map('n', '<Leader>h', ':Telescope help_tags<CR>', opts)

-- Term
map('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)

-- Comments
map("n", "<leader>/", ":CommentToggle<CR>", opts)
map("v", "<leader>/", ":CommentToggle<CR>", opts)

-- splits
map("n", "<leader>\\", ":vsplit<CR>", opts)
map("n", "<leader>-", ":split<CR>", opts)

-- Explorer
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- esc to turn off search highlighting
map('n', '<ESC>', ':noh<CR>', {silent = true})

-- -- better tmux window movement
map('n', '<C-l>', ':TmuxNavigateRight <CR>', {silent = true})
map('n', '<C-j>', ':TmuxNavigateDown <CR>', {silent = true})
map('n', '<C-k>', ':TmuxNavigateUp <CR>', {silent = true})
map('n', '<C-h>', ':TmuxNavigateLeft <CR>', {silent = true})

-- TODO fix this
-- Terminal window navigation
vim.cmd([[
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>
]])

-- Move selected line / block of text in visual mode
map('x', 'K', [[:move <-2<CR>gv-gv]], opts)
map('x', 'J', [[:move >+1<CR>gv-gv]], opts)

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
