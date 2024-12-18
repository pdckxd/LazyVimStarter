-- local uname = vim.loop.os_uname()
-- local sysname = uname["sysname"]
-- --NOTE: Not support Windows
-- if string.find(string.lower(sysname), "windows") ~= nil then
--   vim.print("WARN: sniprun plugin does not support Windows!")
--   return {}
-- end

return {
  "michaelb/sniprun",
  branch = "master",
  build = "sh install.sh",
  cond = function()
    local uname = vim.loop.os_uname()
    local sysname = uname["sysname"]
    if string.find(string.lower(sysname), "windows") ~= nil then
      return false
    end
    return true
  end,
  -- do 'sh install.sh 1' if you want to force compile locally
  -- (instead of fetching a binary from the github release). Requires Rust >= 1.65
  opts = {
    display = {
      "Classic", --# display results in the command-line  area
      "VirtualTextOk", --# display ok results as virtual text (multiline is shortened)

      -- "VirtualText",             --# display results as virtual text
      -- "TempFloatingWindow",      --# display results in a floating window
      -- "LongTempFloatingWindow",  --# same as above, but only long results. To use with VirtualText[Ok/Err]
      -- "Terminal", --# display results in a vertical split
      -- "TerminalWithCode",        --# display results and code history in a vertical split
      -- "NvimNotify",              --# display with the nvim-notify plugin
      -- "Api"                      --# return output to a programming interface
    },
  },
}
