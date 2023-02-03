require("neotest").setup({
  adapters = {
    require("neotest-python")({
      runner = "pytest",
      dap = { justMyCode = false },
    }),
    require("neotest-jest")({
      jestCommand = "yarn test --",
      cwd = function(path)
        return vim.fn.getcwd()
      end,
    }),
  },
  output = {
    enabled = true,
    open_on_run = "short",
  },
})
