vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)

-- Move highlighted lined up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keeps the cursor in the middle of the screen when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>y", '"+Y')

-- Tests
vim.keymap.set(
  "n",
  "<leader>tt",
  "<cmd>w<CR><cmd>lua require('neotest').run.run()<CR>"
)
vim.keymap.set(
  "n",
  "<leader>td",
  "<cmd>w<CR><cmd>lua require('neotest').run.run({ strategy = 'dap' })<CR>"
)
vim.keymap.set(
  "n",
  "<leader>tf",
  "<cmd>w<CR><cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>"
)
vim.keymap.set(
  "n",
  "<leader>tl",
  "<cmd>w<CR><cmd>lua require('neotest').run.run_last()<CR>"
)
vim.keymap.set(
  "n",
  "<leader>ts",
  "<cmd>w<CR><cmd>lua require('neotest').summary.toggle()<CR>"
)
vim.keymap.set(
  "n",
  "<leader>tr",
  "<cmd>w<CR><cmd>lua require('neotest').output.open({ enter = true })<CR>"
)
