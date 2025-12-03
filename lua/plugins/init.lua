return {
  { "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000, 
    config = function()
      require("catppuccin").setup({
      flavour               = "mocha",       -- latte|frappe|macchiato|mocha
      transparent_background= false,
      show_end_of_buffer    = false,
      term_colors           = true,
      integrations = {
      },
    })
      vim.cmd.colorscheme "catppuccin"
    end,
  }
}
