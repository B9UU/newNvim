return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		view_options = {
			show_hidden = true,
		},
	},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	lazy = false,
	vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" }),
}
