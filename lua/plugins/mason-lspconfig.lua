local status_ok, _ = pcall(require, "mason-lspconfig")
if not status_ok then
    return
end

require("mason-lspconfig").setup({
    ensure_installed = { "clangd", "pyright" },
    automatic_isntallation = true,
})
