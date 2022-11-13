vim.cmd("colorscheme deus")

local status, _ = pcall(vim.cmd, "colorscheme deus")
if not status then
    print("colorscheme not found")
    return
end
