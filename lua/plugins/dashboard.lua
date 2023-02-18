local status_ok, _ = pcall(require, "dashboard")
if not status_ok then
    return
end

local db = require('dashboard')
-- db.custom_center = {
--   {
--     icon = "  ",
--     desc = "Find  File                              ",
--     action = "Leaderf file --popup",
--     shortcut = "<Leader> f f",
--   },
--   {
--     icon = "  ",
--     desc = "Recently opened files                   ",
--     action = "Leaderf mru --popup",
--     shortcut = "<Leader> f r",
--   },
--   {
--     icon = "  ",
--     desc = "Project grep                            ",
--     action = "Leaderf rg --popup",
--     shortcut = "<Leader> f g",
--   },
--   {
--     icon = "  ",
--     desc = "Open Nvim config                        ",
--     action = "tabnew $MYVIMRC | tcd %:p:h",
--     shortcut = "<Leader> e v",
--   },
--   {
--     icon = "  ",
--     desc = "New file                                ",
--     action = "enew",
--     shortcut = "e           ",
--   },
--   {
--     icon = "  ",
--     desc = "Quit Nvim                               ",
--     -- desc = "Quit Nvim                               ",
--     action = "Q",
--     shortcut = "q           ",
--   },
-- }

db.custom_header = {
" _________________________________________  ",
"/ young man in mathematics you don't      \\ ",
"| understand things, you just get used to | ",
"\\ them.                                   / ",
" -----------------------------------------  ",
"        \\   ^__^                            ",
"         \\  (oo)\\_______                    ",
"            (__)\\       )\\/\\                ",
"                ||----w |                   ",
"                ||     ||                   ",
}
