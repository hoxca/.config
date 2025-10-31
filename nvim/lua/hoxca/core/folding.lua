-- https://github.com/fredrikaverpil/dotfiles/blob/main/nvim-fredrik/lua/fredrik/config/options.lua
-- set up folding
function _G.custom_foldtext()
  local line = vim.fn.getline(vim.v.foldstart)
  local line_count = vim.v.foldend - vim.v.foldstart + 1
  local line_text = vim.fn.substitute(line, "\t", " ", "g")
  return string.format("%s (%d lines)", line_text, line_count)
end
function M.treesitter_foldexpr()
  vim.opt_local.foldmethod = "expr"
  vim.opt_local.foldexpr = "v:lua.vim.treesitter.foldexpr()"
  vim.opt_local.foldtext = "v:lua.custom_foldtext()"
end
function M.lsp_foldexpr()
  vim.opt_local.foldmethod = "expr"
  vim.opt_local.foldexpr = "v:lua.vim.lsp.foldexpr()"
  vim.opt_local.foldtext = "v:lua.custom_foldtext()"
end
vim.opt.foldcolumn = "0"
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
