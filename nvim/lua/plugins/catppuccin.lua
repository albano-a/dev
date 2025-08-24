return {{
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- make sure we load this during startup
    priority = 1000, -- load before all other start plugins
    config = function()
        vim.cmd([[colorscheme catppuccin-mocha]])
    end,
    transparent_background = true
}}
