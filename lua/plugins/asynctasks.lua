return {
  "skywind3000/asynctasks.vim",
  dependencies = {
    "pdckxd/asyncrun.vim",
  },
  event = "VeryLazy",
  init = function()
    vim.g.asyncrun_open = 6
  end,
}
