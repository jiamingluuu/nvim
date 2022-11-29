require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
  map_cr = true,
  enable_check_bracket_line = false,
  ignored_next_char = "[%w%.]"
})
