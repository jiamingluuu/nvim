local status_ok, _ = pcall(require, "nvim-autopairs")
if not status_ok then
    return
end

require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
  map_cr = true,
  enable_check_bracket_line = false,
  ignored_next_char = "[%w%.]"
})
