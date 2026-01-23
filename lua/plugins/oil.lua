return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = "Oil",
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
    { "<leader>-", "<cmd>Oil --float<cr>", desc = "Open parent directory (float)" },
  },
  opts = {
    default_file_explorer = true,  -- Replace netrw
    columns = {
      "icon",
      -- "permissions",
      -- "size",
      -- "mtime",
    },
    view_options = {
      show_hidden = true,  -- Show dotfiles
      is_always_hidden = function(name, bufnr)
        return name == ".." or name == ".git"  -- Hide these
      end,
    },
    -- Keymaps inside oil buffer
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-v>"] = "actions.select_vsplit",
      ["<C-x>"] = "actions.select_split",
      ["<C-t>"] = "actions.select_tab",
      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = "actions.close",
      ["<C-r>"] = "actions.refresh",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = "actions.tcd",
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["g."] = "actions.toggle_hidden",
      ["g\\"] = "actions.toggle_trash",
    },
    -- Disable default keymaps you don't want
    use_default_keymaps = false,  -- Set false to use only above keymaps
  },
}
