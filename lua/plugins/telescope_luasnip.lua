local Util = require("lazyvim.util")

return {
  "benfowler/telescope-luasnip.nvim",
  config = function()
    Util = require("lazyvim.util")
    Util.on_load("telescope.nvim", function()
      require("telescope").load_extension("luasnip")
    end)
  end,
  keys = {
    {
      "<leader>sn",
      function()
        require("telescope").extensions.luasnip.luasnip()
      end,
      desc = "Show all luasnips",
    },
  },
}
