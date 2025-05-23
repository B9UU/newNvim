return {
    'rebelot/kanagawa.nvim',
    config = function()
        local kana = require('kanagawa')

        kana.setup {
            transparent = true,
        }
        vim.cmd.colorscheme 'kanagawa'

        vim.keymap.set("n", "<leader>tt", function()
            kana.setup {
                transparent = not kana.config.transparent,
            }
            vim.cmd.colorscheme 'kanagawa'
        end, { desc = "Toggle transparency" })
    end
}
