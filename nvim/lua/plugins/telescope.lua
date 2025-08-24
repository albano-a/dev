return {{
    "nvim-telescope/telescope.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        -- Put plugin setup here
        require("telescope").setup {}

        -- Put keymaps here
        vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
            desc = "Find files"
        })
        vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {
            desc = "Live grep"
        })
    end
}}
