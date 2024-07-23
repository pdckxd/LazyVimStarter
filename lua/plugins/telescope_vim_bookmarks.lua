local Util = require("lazyvim.util")

return {
  "tom-anders/telescope-vim-bookmarks.nvim",
  config = function()
    Util = require("lazyvim.util")
    Util.on_load("telescope.nvim", function()
      require("telescope").load_extension("vim_bookmarks")
    end)
  end,
  lazy = false,
}
