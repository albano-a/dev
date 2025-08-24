-- Bootstrap lazy.nvim
-- PLUGIN MANAGER
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" 					-- Sets the path where the plugin will be installed
if not (vim.uv or vim.loop).fs_stat(lazypath) then 						-- Checks if lazy.nvim is already there
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"				-- If it's not there, download it using git
	local out = vim.fn.system({
		"git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath
	})
	if vim.v.shell_error ~= 0 then								-- If it fails, show error message
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup 'mapleader' and 'maplocalleader'
-- This is also a good place to setup other settings (vim.opt)----
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"
-- vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
-- vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })

--vim.cmd([[
--        highlight Normal guibg=NONE ctermbg=NONE
--        highlight NormalNC guibg=NONE ctermbg=NONE
--        highlight EndOfBuffer guibg=NONE ctermbg=NONE
--        highlight SignColumn guibg=NONE ctermbg=NONE
--    ]])
--
-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins" }
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins
	install = { colorscheme = { "habamax" } },
    


	-- auto check for plugin updates
	checker = { enabled = true },
})
