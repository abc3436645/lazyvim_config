return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.0.0",
      },
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          dynamic_preview_title = true,
          path_display = { "smart" },
          layout_config = {
            horizontal = {
              preview_width = 0.7,
              result_width = 0.3,
              preview_cutoff = 40,
            },
          },
        },
      })
      telescope.load_extension("live_grep_args")
    end,
  },
}
