local cmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local create_command = vim.api.nvim_create_user_command

vim.cmd([[
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugin.lua source <afile> | PackerCompile
augroup end
]])

-- autocmd ExitPre * :write
--autocmd BufRead * :set scl=yes
-- autocmd BufNewFile * :write
-- autocmd InsertLeave * :write
--save on exit
augroup("save_exit", { clear = true })
cmd("ExitPre", {
	desc = "Save on Exit",
	group = "save_exit",
	pattern = "*",
	command = "wall!",
})

augroup("neotree_start", { clear = true })
cmd("BufEnter", {
	desc = "Open Neo-Tree on startup with directory",
	group = "neotree_start",
	callback = function()
		local stats = vim.loop.fs_stat(vim.api.nvim_buf_get_name(0))
		if stats and stats.type == "directory" then
			require("neo-tree.setup.netrw").hijack()
		end
	end,
})
-- source packer
augroup("packer_conf", { clear = true })
cmd("BufWritePost", {
	desc = "Sync packer after modifying plugins.lua",
	group = "packer_conf",
	pattern = "plugins.lua",
	command = "source <afile> | PackerSync",
})
vim.api.nvim_create_augroup("packer_conf", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
	desc = "Sync packer after modifying plugins.lua",
	group = "packer_conf",
	pattern = "plugins.lua",
	command = "source <afile> | PackerSync",
})
