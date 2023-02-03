-- Highlight yanked text for 200ms
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
  desc = "Highlight yanked text",
})

vim.api.nvim_create_autocmd({ 'VimEnter', 'SessionLoadPost' }, {
  callback = function()
    if vim.g.SessionLoad then return end
    vim.cmd('NvimTreeOpen')
    vim.cmd.wincmd('l')
  end,
  once = true
})
