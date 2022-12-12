local status_ok, _ = pcall(require, "indent_blankline")
if not status_ok then
    return
end

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = false,
    show_current_context_start = true,
}
