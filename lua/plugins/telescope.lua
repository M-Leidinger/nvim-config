return{
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
      -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require("telescope").setup({
      defaults = {
        -- Layout and preview settings
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,  -- 55% of window for preview
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,  -- Show preview when window > 120 cols
        },
        sorting_strategy = "ascending",
        -- Preview enabled (default, but explicit)
        preview = {
          enable = true,
        },
      },
    })
  end,
}
