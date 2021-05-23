DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')
require('plugins.disabled')
require('plugins.pack')
require('lsp')


local servers = { 'clangd' }
for i, v in ipairs(servers) do
	require('lsp.'..v)
end
