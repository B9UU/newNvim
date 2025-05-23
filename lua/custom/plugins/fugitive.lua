return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git" })

		local chaqo_fugitive = vim.api.nvim_create_augroup("chaqo_fugitive", {})

		local autocmd = vim.api.nvim_create_autocmd
		autocmd("BufWinEnter", {
			group = chaqo_fugitive,
			pattern = "*",
			callback = function()
				if vim.bo.ft ~= "fugitive" then
					return
				end

				local bufnr = vim.api.nvim_get_current_buf()
				local opts = { buffer = bufnr, remap = false }
				vim.keymap.set("n", "<leader>p", function()
					vim.cmd.Git("push")
				end, { buffer = bufnr, remap = false, desc = "Git push" })

				-- rebase always
				vim.keymap.set("n", "<leader>P", function()
					vim.cmd.Git({ "pull", "--rebase" })
				end, { buffer = bufnr, remap = false, desc = "Git pull --rebase" })

				-- NOTE: It allows me to easily set the branch i am pushing and any tracking
				-- needed if i did not set the branch up correctly
				vim.keymap.set(
					"n",
					"<leader>t",
					":Git push -u origin ",
					{ buffer = bufnr, remap = false, desc = "Git push -u origin" }
				)
			end,
		})
	end,
}
