------------- Defaults --------------
vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close current buffer' })

--in normal mode through the leader(space key) execute :Ex
vim.keymap.set('n', '<leader>pe', vim.cmd.Ex, { desc = 'Explorer' })

vim.keymap.set('n', '<leader>ef', vim.diagnostic.open_float, { desc = 'Show float diagnostics' })

vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })

-- Remap the register prefix from " to ;
-- This is a bit tricky as `"` is an operator prefix.
-- The most common way is to make an operator-pending mapping.
-- This means the mapping only works when an operator like d, y, or c is pending.

vim.keymap.set('o', '\\', '"', { noremap = true, silent = true, desc = 'Register prefix' })

-- Remap the register prefix from " to ;
-- This maps the semicolon key to type the double quote character
-- It works for all normal mode commands that expect a register prefix
vim.keymap.set('n', '\\', '"', { noremap = true, silent = true, desc = 'Register prefix' })

------------- Neoterm --------------

-- Clear Neoterm (prefix with number, e.g. 3<leader>tl)
vim.keymap.set('n', '<leader>tl', function()
  vim.cmd(vim.v.count .. 'Tclear')
end, { desc = 'Clear Neoterm (count for terminal number)' })

-- Make horizontal terminal always 15 lines tall
vim.g.neoterm_size = 15
vim.g.neoterm_fixedsize = 1
-- Toggle Neoterm vertically inside a new window
vim.keymap.set('n', '<leader>tt', function()
	vim.cmd('vsplit |' .. vim.v.count .. 'Ttoggle')
end, { desc = 'Toggle Neoterm (count for terminal number)' })

-- Toggle Neoterm horizontally inside a new window
vim.keymap.set('n', '<leader>tj', function()
	vim.cmd('split | resize 10 | ' .. vim.v.count .. 'Ttoggle')
end, { desc = 'Toggle Neoterm (count for terminal number)' })

-- Kill Neoterm
vim.keymap.set('n', '<leader>tk', function()
  vim.cmd(vim.v.count .. 'Tkill')
end, { desc = 'Kill Neoterm (count for terminal number)' })

-- Show Neoterm
vim.keymap.set('n', '<leader>ts', function()
  vim.cmd(vim.v.count .. 'Tshow')
end, { desc = 'Show Neoterm (count for terminal number)' })

-- Hide Neoterm
vim.keymap.set('n', '<leader>th', function()
  vim.cmd(vim.v.count .. 'Thide')
end, { desc = 'Hide Neoterm (count for terminal number)' })

-- Press Esc in terminal mode to go back to normal mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

