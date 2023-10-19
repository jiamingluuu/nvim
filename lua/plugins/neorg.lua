require('neorg').setup {
    load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = { -- Adds pretty icons to your documents
            config = {
                icons = {
                    todo = {
                        done = {
                            icon = "",
                        },
                        pending = {
                            icon = "",
                        },
                        uncertain = {
                            icon = "?",
                        },
                        urgent = {
                            icon = "",
                        },
                        on_hold = {
                            icon = "",
                        },
                        cancelled = {
                            icon = "",
                        },
                    },
                },
            },
        },

        ["core.presenter"] = {
            config = {
                zen_mode = "zen-mode",
                slide_count = {
                    enable = true,
                    position = "mid",
                },
            },
        },

        ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
                workspaces = {
                    notes = "~/notes/",
                },
            },
        },
    },
}
