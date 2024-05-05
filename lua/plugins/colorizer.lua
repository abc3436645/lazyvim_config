return {
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        user_default_options = {
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          rgb_fn = true, -- CSS rgb() and rgba() functions
          hsl_fn = true, -- CSS hsl() and hsla() functions
        },
      })
    end,
  },
  {
    "ziontee113/color-picker.nvim",
    config = function()
      require("color-picker").setup()
    end,
  },
}
