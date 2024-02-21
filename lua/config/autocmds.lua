-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
vim.cmd([[
  function! CorrectSpelling()
    normal mb
    let word_before_correction = expand("<cword>")
    let original_setting = &spell

    set spell
    normal 1z=

    let word_after_correction = expand("<cword>")

    if tolower(word_after_correction) == word_before_correction
      undo
    endif

    normal `b
    let &spell = original_setting
  endfunction
]])
