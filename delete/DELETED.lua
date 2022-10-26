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

use({
	"glepnir/lspsaga.nvim",
	branch = "main",
	config = function()
		require("plug.lspsaga")
	end,
})

-- term
use({
	"akinsho/toggleterm.nvim",
	tag = "v2.*",
	config = function()
		require("toggleterm").setup()
	end,
})

use({
	"folke/twilight.nvim",
	config = function()
		require("plug.twilight")
	end,
})

use({
	"goolord/alpha-nvim",
	requires = { "kyazdani42/nvim-web-devicons" },
	config = function()
		require("alpha").setup(require("alpha.themes.dashboard").config)
	end,
})
