-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require("telescope").setup({
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
	},
})
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("fzf")

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Search Git files" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch [B]uffers" })
vim.keymap.set("n", "<leader>sr", builtin.oldfiles, { desc = "[S]earch [R]recently opened files" })
vim.keymap.set("n", "<leader>ss", builtin.grep_string, { desc = "[S]earch [S]trin globally under the cursor" })

-- local function on_lsp_attach()
-- 	vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = '[G]oto [R]eferences', remap = true})
-- end

-- Remap on mason init
-- local mason_lspconfig = require("mason-lspconfig")
-- mason_lspconfig.setup_handlers()
-- mason_lspconfig.setup_handlers(
-- 	function (server_name)
-- 		require("lspconfig")[server_name].setup({
-- 			on_attach = on_lsp_attach
-- 		})
-- 	end
-- )
