return {
	-- Custom filetype detection
	{
		-- This plugin block is just a container for the config function
		"nvim-lua/plenary.nvim", -- any plugin as a stub
		lazy = false,
		config = function()
			vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
				pattern = ".env*",
				callback = function()
					vim.bo.filetype = "sh"
				end,
			})
		end,
	},
}
