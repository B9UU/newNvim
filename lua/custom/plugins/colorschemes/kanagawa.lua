return {
    'rebelot/kanagawa.nvim',
    enabled = true,
    config = function()
        local kana = require('kanagawa')

        kana.setup {
            transparent = true,
        }
        -- vim.cmd.colorscheme 'kanagawa'

        vim.keymap.set("n", "<leader>tk", function()
            kana.setup {
                transparent = not kana.config.transparent,
            }
            vim.cmd.colorscheme 'kanagawa'
        end, { desc = "Toggle transparency kanagawa" })
    end
}
