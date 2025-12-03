-- binds <leader>ff to find_files
vim.keymap.set(
  "n",
  "<C-f>",
  require("telescope.builtin").find_files,
  { desc = "Telescope: Find Files", silent = true }
)

-- binds <leader>fg to live_grep
vim.keymap.set(
  "n",
  "<C-g>",
  require("telescope.builtin").live_grep,
  { desc = "Telescope: Live Grep", silent = true }
)

