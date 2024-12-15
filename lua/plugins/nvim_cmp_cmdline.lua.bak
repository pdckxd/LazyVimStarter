return {
  "hrsh7th/cmp-cmdline",
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function(_, opts)
    local cmp = require("cmp")
    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        { name = "cmdline" },
      }),
    })
  end,
}
