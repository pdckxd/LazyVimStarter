return {
  "skywind3000/asynctasks.vim",
  dependencies = {
    "pdckxd/asyncrun.vim",
  },
  event = "VeryLazy",
  init = function()
    vim.g.asyncrun_open = 6
  end,
  keys = {
    { "<f5>", "<cmd>AsyncTask project_build_run<cr>", desc = "run AsyncTask" },
  },
}
