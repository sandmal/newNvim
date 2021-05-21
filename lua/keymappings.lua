local opts = { noremap = true, silent = true }

-- set leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', opts)
vim.g.mapleader = ' '

-- telescope
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>fw', ':Telescope live_grep<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope git_branches<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>fo', ':Telescope oldfiles<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>fr', ':Telescope registers<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>fh', ':Telescope help_tags<CR>', opts)

-- Term
vim.api.nvim_set_keymap('n', '<leader>tt', '<CMD>lua require("FTerm").toggle()<CR>', opts)
vim.api.nvim_set_keymap('t', '<leader>tt', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)

-- Comments
vim.api.nvim_set_keymap("n", "<leader>/", ":CommentToggle<CR>", opts)
vim.api.nvim_set_keymap("v", "<leader>/", ":CommentToggle<CR>", opts)

-- Explorer
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- esc to turn off search highlighting
vim.api.nvim_set_keymap('n', '<ESC>', ':noh<CR>', {silent = true})

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

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

-- TODO fix this
-- resize with arrows
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', {silent = true})

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', opts)
vim.api.nvim_set_keymap('v', '>', '>gv', opts)

-- I hate escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', opts)
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', opts)
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', opts)

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', opts)
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', opts)

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', opts)
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', opts)

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
