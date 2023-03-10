vim.cmd.colorscheme("catppuccin")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.g.catppuccin_flavour = "mocha"
local present, catppuccin = pcall(require, "catppuccin")
if not present then
  return
end

catppuccin.setup({
  dim_inactive = {
    enable = true,
    shade = "dark",
    percentage = 0.15,
  },
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
  },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
    },
    cmp = true,
    coc_nvim = false,
    lsp_saga = true,
    lsp_trouble = true,
    nvimtree = {
      enabled = true,
    },
    neotree = {
      enabled = false,
    },
    which_key = true,
    indent_blankline = {
      enabled = true,
      colored_indent_levels = true,
    },
    barbar = false,
    dashboard = false,
    fern = false,
    gitgutter = false,
    gitsigns = true,
    hop = false,
    leap = false,
    lightspeed = true,
    markdown = true,
    neogit = true,
    notify = false,
    symbols_outline = true,
    telekasten = false,
    telescope = true,
    ts_rainbow = true,
    vim_sneak = false,
    vimwiki = true,
  },
  highlight_overrides = {
    all = function(colors)
      return {
        DashboardCenter = { fg = colors.peach },
        DashboardFooter = { fg = colors.maroon },
        DashboardHeader = { fg = colors.pink },
        DashboardShortCut = { fg = colors.yellow },
        -- custom selection highlight
        Selection = { bg = colors.surface1, fg = colors.text },
        -- borders
        FloatBorder = { fg = colors.overlay0 },
        LspInfoBorder = { link = "FloatBorder" },
        NvimTreeWinSeparator = { link = "FloatBorder" },
        WhichKeyBorder = { link = "FloatBorder" },
        -- telescope
        TelescopeBorder = { link = "FloatBorder" },
        TelescopeTitle = { fg = colors.text },
        TelescopeSelection = { link = "Selection" },
        TelescopeSelectionCaret = { link = "Selection" },
        -- pmenu
        PmenuSel = { link = "Selection" },
      }
    end,
    mocha = function(colors)
      return {
        Selection = { bg = "#121212", fg = colors.text },
        Comment = { fg = colors.surface2, style = { "italic" } },
        InlayHint = { fg = colors.surface0, style = { "italic" } },
      }
    end,
  },
  color_overrides = {
    mocha = {
      base = "#000000",
      crust = "#010101",
      mantle = "#020202",
    },
  },
  transparent_background = true,
})

vim.api.nvim_command("colorscheme catppuccin")
