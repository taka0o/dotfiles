require("telescope").setup({
  extensions = {
    docker = {
      theme = "ivy",
      log_level = vim.log.levels.INFO,
      init_term = function(command)
        vim.cmd("FloatermNew")
        vim.cmd("FloatermSend " .. command)
      end,
    },
  },
})

require("telescope").load_extension("docker")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader><Space>", ":Telescope buffers<CR>")
