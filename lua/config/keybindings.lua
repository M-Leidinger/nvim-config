local builtin = require('telescope.builtin')

-- binds leader key to space
vim.g.mapleader = " "

-- binds local leader key to double backslash
vim.g.maplocalleader = "\\"

-- binds <leade>pv to the directory overview
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- binds <leader>ff to find_files
vim.keymap.set(
  "n",
  "<leader>ff",
  builtin.find_files,
  { desc = "Telescope: Find Files", silent = true }
)

-- binds <leader>fg to live_grep
vim.keymap.set(
  "n",
  "<leader>lg",
  builtin.live_grep,
  { desc = "Telescope: Live Grep", silent = true }
)

-- binds <leader>gf to a search for files tracked in git
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})



