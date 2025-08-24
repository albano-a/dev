return {{
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        -- Config comes here
    },
    keys = {{
        "<leader>1",
        function()
            require("which-key").show({
                global = false
            })
        end,
        desc = "Buffer Local Keymaps (which-key)"
    }}

}}
