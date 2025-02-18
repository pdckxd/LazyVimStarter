-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable text width setting for git commit filetype
vim.cmd([[
  au FileType gitcommit setlocal tw=0
  highlight link gitcommitBlankxxx NONE
]])

-- disable gitcommitBlank syntax group
vim.api.nvim_create_autocmd("FileType", {
  pattern = "gitcommit",
  callback = function()
    vim.cmd("highlight link gitcommitBlank NONE")
  end,
})
