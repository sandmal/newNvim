local augroups = require('lib.augroups')

local format_group = { }
local format_extensions = { 'py', 'js', 'jsx', 'ts', 'tsx', 'lua', 'json', 'rb' }

--[[
for i, v in ipairs(format_extensions) do
	format_group[#format_group + 1] = { 'BufWritePre', '*.'..v, 'lua vim.lsp.buf.formatting_sync(nil, 1000)' }
end
augroups {
	format = format_group
}
--]]
