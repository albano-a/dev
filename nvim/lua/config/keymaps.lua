local map = vim.keymap.set
local opts = {
    silent = true
}

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

map("n", "<leader>y", '"+y', {
    desc = "Yank to system clipboard"
})
map("v", "<leader>y", '"+y', {
    desc = "Yank to system clipboard"
})

-- HTML remap for expanding emmet
vim.api.nvim_set_keymap("i", "<C-e>", "<Plug>(emmet-expand-abbr)", {
    noremap = false,
    silent = true
})

-- Remap for Nvim tree - space + e toggles and space + b changes focus
map("n", "<leader>e", ":NvimTreeToggle<CR>", {
    desc = "Toggle NvimTree"
})

map("n", "<leader>b", function()
    local view = require("nvim-tree.api")

    -- Okay, the method checks if the tree is visible
    if view.tree.is_visible() then
        vim.cmd.wincmd("p") -- volta para o buffer anterior
    else
        vim.cmd("NvimTreeFocus")
    end
end, {
    desc = "Focus on nvim-tree"
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local opts = {
            buffer = args.buf
        }
        map("n", "gd", vim.lsp.buf.definition, opts)
        map("n", "K", vim.lsp.buf.hover, opts)
        map("n", "<leader>rn", vim.lsp.buf.rename, opts)
        map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        map("n", "<leader>gb", "<C-o>", opts)
    end
})

-- Keymaps for moving the entire line

map("x", "<A-j>", ":m '>+1<CR>gv=gv", {
    silent = true
})
map("x", "<A-k>", ":m '<-2<CR>gv=gv", {
    silent = true
})
map("n", "<A-j>", ":m .+1<CR>==", {
    silent = true
})
map("n", "<A-k>", ":m .-2<CR>==", {
    silent = true
})

