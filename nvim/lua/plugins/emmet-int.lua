return {{
    "mattn/emmet-vim",
    ft = {"html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact", "vue"},
    config = function()
        vim.g.user_emmet_leader_key = "<C-y>"
    end
}}
