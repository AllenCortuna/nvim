vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function()

	use("wbthomason/packer.nvim")

	use("lewis6991/impatient.nvim")

	-- LSP
	use({
		"williamboman/mason.nvim",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("plug.mason")
		end,
	})

	use({
		"williamboman/mason-lspconfig.nvim",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("mason-lspconfig").setup()
		end,
	})

	use({
		"neovim/nvim-lspconfig",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("plug.lsp-config")
		end,
	})

	-- formater
	-- use({
	-- 	"jose-elias-alvarez/null-ls.nvim",
	-- 	event = { "BufRead", "BufNewFile" },
	--    config = function()
	--      require("plug.null_ls")
	--    end
	-- })

	--todo
	use({
		"AmeerTaweel/todo.nvim",
		requires = "nvim-lua/plenary.nvim",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("plug.todo")
		end,
	})

	-- theme
	use({
		"marko-cerovac/material.nvim",
		config = function()
			require("theme.material")
		end,
	})

	-- icons
	use({
		"kyazdani42/nvim-web-devicons",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("plug.dev-icons")
		end,
	})

	-- session
	use({
		"Shatur/neovim-session-manager",
		cmd = "SessionManager",
		config = function()
			require("plug.session")
		end,
	})

	--key
	use({
		"folke/which-key.nvim",
		config = function()
			require("plug.which-key")
		end,
	})

	-- identline
	use({
		"lukas-reineke/indent-blankline.nvim",
		event = "BufReadPost",
		config = function()
			require("indent_blankline").setup({})
		end,
	})

	-- syntax high
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		event = { "BufRead", "BufNewFile" },
		cmd = {
			"TSInstall",
			"TSInstallInfo",
			"TSInstallSync",
			"TSUninstall",
			"TSUpdate",
			"TSUpdateSync",
			"TSDisableAll",
			"TSEnableAll",
		},
		config = function()
			require("plug.treesitter")
		end,
	})

	-- statusline
	use({
		"NTBBloodbath/galaxyline.nvim",
		after = "nvim-web-devicons",
		config = function()
			require("plug.galaxyline")
		end,
	})

	-- bufferline
	use({
		"romgrk/barbar.nvim",
		after = "nvim-web-devicons",
		config = function()
			require("plug.barbar")
		end,
	})

	-- rainbow bracket
	use({
		"p00f/nvim-ts-rainbow",
		after = "nvim-treesitter",
		config = function()
			require("plug.tsRainbow")
		end,
	})

	-- git
	use({
		"lewis6991/gitsigns.nvim",
		event = { "BufRead", "BufNewFile" },
		cmd = "Gitsigns",
		config = function()
			require("plug.gitsign")
		end,
	})

	-- scroll
	use({
		"declancm/cinnamon.nvim",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("plug.scroll")
		end,
	})

	-- autotag
	use({
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
		config = function()
			require("plug.autotag")
		end,
	})

	-- autopairs
	use({
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})

	-- neotree
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		cmd = "Neotree",
		requires = {
			"kyazdani42/nvim-web-devicons",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("plug.neotree")
		end,
	})

	-- telescope
	use({
		"benfowler/telescope-luasnip.nvim",
		module = "telescope._extensions.luasnip", -- if you wish to lazy-load
		config = function()
			require("telescope").load_extension("luasnip")
		end,
		after = "telescope.nvim",
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		cmd = "Telescope",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("plug.telescope")
		end,
	})

	-- comment
	use({
		"numToStr/Comment.nvim",
		keys = { "gc" },
		event = { "BufRead", "BufNewFile" },
		config = function()
			-- require("plug.comment")
			require("Comment").setup()
		end,
	})

	-- completion
	use({ "rafamadriz/friendly-snippets", event = "InsertEnter" })

	use({
		"hrsh7th/nvim-cmp",
		after = "friendly-snippets",
		config = function()
			require("plug.cmp")
		end,
	})

	-- snippet
	use({
		"L3MON4D3/LuaSnip",
		wants = "friendly-snippets",
		after = "nvim-cmp",
		config = function()
			require("plug.luasnip")
		end,
	})

	use({ "saadparwaiz1/cmp_luasnip", after = "LuaSnip" })

	use({ "hrsh7th/cmp-nvim-lua", after = "cmp_luasnip" })

	use({ "hrsh7th/cmp-cmdline", after = "cmp-buffer" })

	use({ "hrsh7th/cmp-nvim-lsp", after = "cmp-nvim-lua" })

	use({ "hrsh7th/cmp-buffer", after = "cmp-nvim-lsp" })

	use({ "hrsh7th/cmp-path", after = "cmp-buffer" })

	-- formatter
	use({ "prettier/vim-prettier", cmd = "Prettier" })
	use({ "ckipp01/stylua-nvim" })

	-- notify
	use({
		"rcarriga/nvim-notify",
		event = "VimEnter",
		config = function()
			require("plug.notify")
		end,
	})
end)
