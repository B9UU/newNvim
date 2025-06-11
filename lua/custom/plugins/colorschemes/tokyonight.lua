return {
  {
    'folke/tokyonight.nvim',
    enabled = true,
    priority = 1000,
    config = function()
      local tokyo = require('tokyonight')
      local transparent_enabled = true

      local function apply_tokyonight()
        tokyo.setup {
          style = "moon",
          transparent = transparent_enabled,
          styles = {
            sidebars = 'transparent',
            floats = 'transparent',
            comments = { italic = false },
          },
          on_colors = function(colors)
            colors.bg = "#090909" -- Darker background
          end,
        }
        vim.cmd.colorscheme 'tokyonight'
      end

      -- Initial setup
      apply_tokyonight()

      -- Keymap to toggle transparency
      vim.keymap.set("n", "<leader>tt", function()
        transparent_enabled = not transparent_enabled
        apply_tokyonight()
      end, { desc = "Toggle TokyoNight transparency" })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
