return {
  "ThePrimeagen/harpoon",
  event = "VeryLazy",
  keys = {
    {
      "<c-e>",
      "<cmd>lua require('harpoon.ui').nav_next()<cr>",
      desc = "Switch Harpoon Buff",
    },
    {
      "<c-x>e",
      "<cmd>lua require('harpoon.mark').add_file()<cr>",
      desc = "Add current file to Harpoon buffer list",
    },
    {
      "<c-x>d",
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>,",
      desc = "Toggle Harpoon Quick Menu",
    },
    --[[
      ---- Ctrl + E to toggle file in harpoon file list
      keymap({'n', 'i'}, '<c-e>', '<cmd>lua require("harpoon.ui").nav_next()<cr>', opts)
      -- Ctrl + X, Ctrl + E to add current buffer to harpoon file list
      keymap({'n', 'i'}, '<c-x><c-e>', '<cmd>lua require("harpoon.mark").add_file()<cr>', opts)
      -- Ctrl + X, Ctrl + D to show harpoon file list popup window
      keymap({'n', 'i'}, '<c-x><c-d>', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', opts)
    --]]
  },
}
