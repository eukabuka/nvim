require('eukabuka.remap')

-- Restore cursor position upon re-opening a file.
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" },
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false)
    end,
})

-- Numbering and cursorline.
vim.cmd('set nu')
vim.cmd('set rnu')
vim.cmd('set so=999')
vim.cmd('set cursorline')
-- install "xclip"
vim.opt.clipboard="unnamedplus"

-- Color scheme.
vim.o.background = "dark" -- or "light" for light mode
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd([[colorscheme gruvbox]])
