return {
  "dstein64/nvim-scrollview",
  opts = {
    -- only show in current window
    current_only = true,
    -- transparency
    winblend = 0,
    -- offset
    base = "right",
    column = 1,
    character = "",
    excluded_filetypes = {
      "NvimTree",
      "aerial",
      "undotree",
      "dbui",
      "spectre_panel",
      "neo-tree",
    },
  },
}
