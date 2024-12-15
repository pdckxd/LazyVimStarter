-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- quickly exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { silent = true, noremap = true })
vim.keymap.set("i", "kj", "<ESC>", { silent = true, noremap = true })

-- disable highlight
vim.keymap.set("n", "<leader>h", "<cmd>nohl<CR>", { silent = true, desc = "Disable Highlight", noremap = true })

-- toggle neo-tree
vim.keymap.set("n", "<leader>1", function()
  local Util = require("lazyvim.util")
  require("neo-tree.command").execute({ toggle = true, dir = Util.root() })
end, { silent = true, noremap = true, desc = "Toggle neo-tree" })

-- Ctrl + f to correct spelling in insert mode
vim.keymap.set(
  "i",
  "<c-f>",
  "<esc>:call CorrectSpelling()<cr>a",
  { silent = true, desc = "Correct spelling", noremap = true }
)
-- <leader>z to correct spelling in normal mode
vim.keymap.set(
  "n",
  "<leader>z",
  "<esc>:call CorrectSpelling()<cr>",
  { silent = true, desc = "Correct spelling", noremap = true }
)

-- Telescope remap
-- <leader>ln to show next diagnostic
vim.keymap.set(
  "n",
  "<leader>ln",
  "<cmd>lua vim.diagnostic.goto_next()<CR>",
  { silent = true, desc = "Next Diagnostic", noremap = true }
)
-- <leader>lN to show previous diagnostic
vim.keymap.set(
  "n",
  "<leader>lN",
  "<cmd>lua vim.diagnostic.goto_prev()<CR>",
  { silent = true, desc = "Previous Diagnostic", noremap = true }
)
-- <leader>sm to show all vim-bookmarks
vim.keymap.set(
  "n",
  "<leader>sm",
  "<cmd>lua require('telescope').extensions.vim_bookmarks.all()<CR>",
  { silent = true, desc = "Show all vim-bookmarks", noremap = true }
)
-- <leader>fG to show fugitive Git window
vim.keymap.set("n", "<leader>fG", "<cmd>Git<CR>", { silent = true, desc = "Open Fugitive", noremap = true })
-- <leader>lg to show grep window
-- vim.keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<CR>", { silent = true, desc = "Grep", noremap = true })
--
-- customized toggleterm keymaps
vim.keymap.set("t", "<esc>", [[<C-\><C-N>]], { silent = true, desc = "Exit to norm", noremap = true })

-- unmap built-in <leader>l
vim.keymap.del("n", "<leader>l")
-- vim.keymap.del({ "n", "i" }, "<esc>")
