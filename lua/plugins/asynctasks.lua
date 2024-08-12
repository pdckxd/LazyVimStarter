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
    { "<f5>", "<cmd>AsyncTask project-build-run<cr>", desc = "run AsyncTask" },
  },
}
