require("which-key").add({
  -- Register the `;` keymap with which-key
  { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
  { '<leader>d', group = '[D]ocument' },
  { '<leader>r', group = '[R]ename' },
  { '<leader>s', group = '[S]earch' },
  { '<leader>w', group = '[W]orkspace' },
  { '<leader>t', group = '[T]oggle' },
  { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
  -- The keymap must already exist (using vim.keymap.set) for this to work
  { ";", group = "Registers", desc = "Access a named register" },

  { "<leader>w", group = "Write" }, -- proxy to window mappings
  { "<leader>ww", proxy = "<cmd>w<cr>", desc = "Write" }, -- proxy to window mappings
  { "<leader>wa", proxy = "<cmd>wa<cr>", desc = "Write All" }, -- proxy to window mappings

  { "<leader>W", proxy = "<c-w>", group = "Windows" }, -- proxy to window mappings
})

