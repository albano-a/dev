return {{
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function ()
        local configs = require('nvim-treesitter.configs')
        configs.setup({
            ensure_installed = {
                "svelte", "css", "tsx", 
                "vue", "python", "c", 
                "cpp", "rust", "javascript", 
                "csv", "c_sharp", "typescript", 
                "html", "json"},
                auto_install = true,
            })    
    end
}}
