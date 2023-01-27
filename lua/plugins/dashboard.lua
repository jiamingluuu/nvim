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
"                              VIM - Vi IMproved                                ",
"                                                                               ",
"                               version 8.2.4113                                ",
"                           by Bram Moolenaar et al.                            ",
"                 Vim is open source and freely distributable                   ",
"                                                                               ",
"                        Become a registered Vim user!                          ",
"                type  :help register<Enter>   for information                  ",
"                                                                               ",
"                type  :q<Enter>               to exit                          ",
"                type  :help<Enter>  or  <F1>  for on-line help                 ",
"                type  :help version8<Enter>   for version info                 ",
}
