vim.opt.list = true
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
  space_char_blankline = " ",

  show_trailing_blankline_indent = false,

  use_treesitter = true,

 show_current_context = true,
  show_current_context_start = true,
}
