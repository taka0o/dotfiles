require("nvim-tree").setup({
  view = {
    adaptive_size = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
    ignore = false,
  },
})
