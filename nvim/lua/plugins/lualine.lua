return {
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'horizon',
                component_separators = {
                    left = '',
                    right = ''
                },
                section_separators = {
                    left = '',
                    right = ''
                },
                sections = {
                    lualine_a = {'branch', 'diff', 'diagnostics'},
                    lualine_b = {'filename'},
                    lualine_c = {'mode'}
                }
            }
        }
    end
}
