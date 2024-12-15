return {
  "mg979/vim-visual-multi",
  dependencies = {
    "nvim-lualine/lualine.nvim",
  },
  event = "VeryLazy",
  init = function()
    local vm_maps_table = {}
    vm_maps_table["Find Under"] = "<C-G>"
    vm_maps_table["Find Subword Under"] = "<C-G>"
    vm_maps_table["Add Cursor Down"] = ""
    vm_maps_table["Add Cursor Up"] = ""
    -- vm_maps_table["Select Cursor Down"] = "<M-C-Down>"
    -- vm_maps_table["Select Cursor Up"] = "<M-C-Up>"
    vm_maps_table["Select Cursor Down"] = "<M-Down>"
    vm_maps_table["Select Cursor Up"] = "<M-Up>"
    vim.api.nvim_set_var("VM_maps", vm_maps_table)

    -- change VM Theme
    vim.api.nvim_set_var("VM_theme", "nord")

    -- enable mouse
    vim.api.nvim_set_var("VM_mouse_mappings", 1)

    --NOTE: pause illuminate when enter VM, enable illuminate when exit VM
    vim.api.nvim_create_autocmd({ "User" }, {
      pattern = "visual_multi_start",
      callback = function()
        -- vim.cmd([[IlluminatePause]])
        require("lualine").hide()
      end,
    })
    vim.api.nvim_create_autocmd({ "User" }, {
      pattern = "visual_multi_exit",
      callback = function()
        require("lualine").hide({ unhide = true })
        -- vim.cmd([[IlluminateResume]])
      end,
    })
    -- vim.cmd([[
    --   autocmd User visual_multi_start  IlluminatePause
    --   autocmd User visual_multi_exit    IlluminateResume
    -- ]])
  end,
}
