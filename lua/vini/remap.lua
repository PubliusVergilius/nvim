vim.g.mapleader = ' '

--in normal mode through the leader(space key) execute :Ex
vim.keymap.set('n', '<leader>pe', vim.cmd.Ex)

vim.keymap.set('n', '<leader>ef', vim.diagnostic.open_float, { desc = 'Show float diagnostics' })

-- Clear Neoterm (prefix with number, e.g. 3<leader>tl)
vim.keymap.set('n', '<leader>tl', function()
  vim.cmd(vim.v.count .. 'Tclear')
end, { desc = 'Clear Neoterm (count for terminal number)' })

-- Toggle Neoterm
vim.keymap.set('n', '<leader>tt', function()
	vim.cmd(vim.v.count .. 'Ttoggle')
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
