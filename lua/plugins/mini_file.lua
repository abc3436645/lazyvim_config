return {
  "echasnovski/mini.files",
  config = function()
    require("mini.files").setup({
      mappings = {
        close = "Q",
        go_in = "<Right>",
        go_in_plus = "<A-Right>",
        go_out = "<Left>",
        go_out_plus = "<A-Left>",
        reset = "<BS>",
        reveal_cwd = "<A-Up>",
      },

      -- Customization of explorer windows
      windows = {
        preview = true,
      },
    })
  end,
}
