# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Customized Keymap

1. General
    1. __insert mode__: `jk`, `kj` to exit insert mode and enter normal mode
    2. __normal mode__: `<leader>h`: disable highlighting
    3. __insert mode__: `<c-f>` to correct spelling under the cursor
    4. __normal mode__: `<leader>ln`, `<leader>lN` go to next/prev diagnostic
2. Harpoon
    1. __normal mode__: `<c-e>` to go to next file
    2. __normal mode__: `<c-x>e` to add current file to Harpoon buffer list
    3. __normal mode__: `<c-x>d` to toggle Harpoon Quick menu
3. mini.surround
    1. __normal mode__: `ys` to add surrounding in Normal and Visual modes
    2. __normal mode__: `ds` to delete surrounding
    3. __normal mode__: `gsf` to Find surrounding (to the right)
    4. __normal mode__: `gsF` to Find surrounding (to the left)
    5. __normal mode__: `cs` to replace surrounding
    6. __normal mode__: `gsn` to Update `n_lines`
4. nvim-treesitter-textsubjects
    1. __visual mode__: `<enter>` to expand the selection every time hitting `<enter>`
5. telescope-luasnip
    1. __normal mode__: `<leader>sns` to show all luasnips
6. toggleterm
    1. __normal mode__: `<c-t>` to toggle terminal window
7. twilight
    1. __normal mode__: `<leader>ug` to toggle Twilight mode
8. vim-fugitive
    1. __normal mode__: `<leader>fg` to show fugitive Git status window
9. vim-visual-multi
    1. __normal mode__: `<c-g>` to Find Under
        1. In `VM` mode:
            * `n` to select next occurrence, `N` to select prev occurrence.
            * `q` to de-select current selected occurrence.
            * `\` is VM leader, hit it to show whichkey menu for VM plugin
            * `\A` to select all occurrence in buffer
            * `\/` to start regexp search
    2. __normal mode__: `<M-C-Down>` to Select Cursor Down
    3. __normal mode__: `<M-C-Up>` to Select Cursor Up
10. cheatsheet.nvim
    1. __normal mode__: `<leader>?` open cheatsheet telescope picker
    2. __normal mode__: `<leader>se` open cheatsheet telescope picker
11. vim-bookmarks
    1. __normal mode__: `<leader>sm` show all vim-bookmarks in telescope picker
        * `ma` show all vim-bookmarks in quicklist window
    2. __normal mode__: `mm` toggle the vim-bookmark
    3. __normal mode__: `mi` annotate the vim-bookmark
12. cheat.sh-vim
    1. __normal mode__: `<leader>KP` Past the answer below your question
    2. __normal mode__: `<leader>KB` get the answer on a special buffer
    3. __normal mode__: `<leader>KC` Replay last query, toggling comments
    4. __normal mode__: `<leader>KR` Replace your question by the answer
    5. __normal mode__: `<leader>KE` Replace your question by the answer
