--NOTE: Alex: check if HOME env is set on Windows otherwise ~ will be translated to "U:/" which doesn't exist
---@diagnostic disable-next-line: missing-parameter
if not vim.loop.os_getenv("HOME") then
  error("Please set environment varialbe 'HOME' before launching the neovim")
end
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
