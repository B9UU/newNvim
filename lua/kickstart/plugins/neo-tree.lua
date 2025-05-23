-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		-- { "echasnovski/mini.icons", opts = {} },
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	keys = {
		{ "\\", ":Neotree reveal<CR>", desc = "NeoTree reveal", silent = true },
	},

	opts = {
		action = {
			open_file = {
				window_picker = {
					enable = false,
				},
			},
		},
		filesystem = {
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
		},
	},
}
