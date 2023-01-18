require("neorg").setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    work = "~/notes/work",
                    home = "~/notes/home",
                }
            }
        },
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp",
            }
        },

        ["core.norg.concealer"] = {},
        ["core.norg.esupports.indent"] = {},
    }
}