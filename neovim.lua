-- Literary Universe Dark — Neovim
-- Art Deco: deep charcoal, champagne gold, LU pink, sky blue
-- Uses the aether.nvim plugin with custom dark palette

return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors — deep charcoal / near-black
                bg          = "#1B1A1A",
                bg_dark     = "#0D0C0C",
                bg_highlight = "#3A3530",

                -- Foreground colors — warm off-white
                fg          = "#F0EDE8",
                fg_dark     = "#C8BFB4",
                comment     = "#6A6058",

                -- Accent colors — Art Deco palette
                -- red: errors, deletions — vivid red
                red         = "#E05252",
                -- orange: constants, numbers — amber
                orange      = "#F06060",
                -- yellow: types, warnings — champagne gold
                yellow      = "#D4A843",
                -- green: strings, success — LU sky blue (neon against dark)
                green       = "#7CC3EB",
                -- cyan: parameters, hints — lighter blue
                cyan        = "#96D4F5",
                -- blue: functions, links — LU secondary blue
                blue        = "#0575BC",
                -- purple: keywords, storage — LU pink (used sparingly)
                purple      = "#FF83D5",
                -- magenta: special keywords — LU magenta
                magenta     = "#C12577",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
