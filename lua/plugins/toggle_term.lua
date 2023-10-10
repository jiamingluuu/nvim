local status_ok, _ = pcall(require, "toggleterm")
if not status_ok then
    return
end

require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  direction = "float",
  size = 80,

  vim.keymap.set("n", "<leader>ft", ":ToggleTerm direction=float<CR>"),
  vim.keymap.set("n", "<leader>T", ":ToggleTerm direction=vertical<CR>"),

  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts),
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts),
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts),
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts),
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts),
}
