local status_ok, _ = pcall(require, "nvim-tree")
if not status_ok then
    return
end

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
vim.keymap.set("n", "tt", ":NvimTreeToggle<CR>")
