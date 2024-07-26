return {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup({
      on_highlights = function(hl, c)
        hl.WinSeparator = "0xffffff"
      end,
    })
  end,
}
