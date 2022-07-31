use({ "hail2u/vim-css3-syntax", ft = { "css" } })
use({ "leafgarland/typescript-vim", ft = { "javascript" } })
use({ "ianks/vim-tsx", ft = { "javascript" } })
use({ "mxw/vim-jsx", ft = { "javascript" } })
use({ "pangloss/vim-javascript", ft = { "javascript" } })

use({
	"neovim/nvim-lspconfig",
	config = function()
		require("plug.lsp-config")
	end,
})
use({
	"williamboman/nvim-lsp-installer",
	config = function()
		require("plug.lsp-installer")
	end,
})

-- highlight portion
use({
	"folke/twilight.nvim",
	cmd = "TwilightEnable",
	config = function()
		require("plug.twilight")
	end,
})

-- todo
use({
	"folke/todo-comments.nvim",
	event = { "BufRead", "BufNewFile" },
	requires = "nvim-lua/plenary.nvim",
	config = function()
		require("todo-comments").setup({})
	end,
})

-- notify
use({
	"rcarriga/nvim-notify",
	event = "VimEnter",
	config = function()
		require("plug.notify")
	end,
})


	--todo
	use({
		"AmeerTaweel/todo.nvim",
		requires = "nvim-lua/plenary.nvim",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("plug.todo")
		end,
	})

	-- zenmode
	use({
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		config = function()
			require("zen-mode").setup({})
		end,
	})
