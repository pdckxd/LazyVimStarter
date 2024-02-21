return {
  "folke/twilight.nvim",
  event = "VeryLazy",
  cmd = {
    "Twilight",
    "TwilightEnable",
    "TwilightDisable",
  },
  keys = {
    { "<leader>ug", "<cmd>Twilight<cr>", desc = "Toggle Twilight" },
  },
}
