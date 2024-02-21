return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    -- "hrsh7th/cmp-cmdline",
    "saadparwaiz1/cmp_luasnip",
  },
  -- NOTE: disable preselect LSP item which is not first entry
  opts = { preselect = require("cmp").PreselectMode.None },
}
