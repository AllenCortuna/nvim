vim.cmd([[packadd packer.nvim]])

return require("packer").startup({
	function()
		use("wbthomason/packer.nvim")

		use("lewis6991/impatient.nvim")

		-- colorscheme
		use({
			"marko-cerovac/material.nvim",
			config = function()
				require("theme.material")
			end,
		})
		use({
			"rose-pine/neovim",
			as = "rose-pine",
			opt = true,
			config = function()
				require("conf.rose-pine")
			end,
		})

		-- LSP
		use({
			"williamboman/mason.nvim",
			event = { "BufRead", "BufNewFile" },
			config = function()
				require("conf.mason")
			end,
		})

		--ui
		use({
			"stevearc/dressing.nvim",
			config = function()
				require("conf.dressing")
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
				require("conf.lsp-config")
			end,
		})

		use({
			"onsails/lspkind.nvim",
			config = function()
				require("conf.lspkind")
			end,
		})
		-- formater
		-- use({
		-- 	"jose-elias-alvarez/null-ls.nvim",
		-- 	event = { "BufRead", "BufNewFile" },
		-- 	requires = "nvim-lua/plenary.nvim",
		--    config = function()
		--      require("conf.null_ls")
		--    end
		-- })

		--todo
		use({
			"AmeerTaweel/todo.nvim",
			requires = "nvim-lua/plenary.nvim",
			event = { "BufRead", "BufNewFile" },
			config = function()
				require("conf.todo")
			end,
		})

		-- icons
		use({
			"kyazdani42/nvim-web-devicons",
			event = { "BufRead", "BufNewFile" },
			config = function()
				require("conf.dev-icons")
			end,
		})

		-- session
		use({
			"Shatur/neovim-session-manager",
			cmd = "SessionManager",
			config = function()
				require("conf.session")
			end,
		})

		--key
		use({
			"folke/which-key.nvim",
			config = function()
				require("conf.which-key")
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
				require("conf.treesitter")
			end,
		})

		-- statusline
		use({
			"NTBBloodbath/galaxyline.nvim",
			after = "nvim-web-devicons",
			config = function()
				require("conf.galaxyline")
			end,
		})

		-- use({
		-- 	"tamton-aquib/staline.nvim",
		-- 	after = "nvim-web-devicons",
		-- 	config = function()
		-- 		require("conf.staline")
		-- 	end,
		-- })

		-- bufferline
		use({
			"romgrk/barbar.nvim",
			after = "nvim-web-devicons",
			config = function()
				require("conf.barbar")
			end,
		})

		-- rainbow bracket
		use({
			"p00f/nvim-ts-rainbow",
			after = "nvim-treesitter",
			config = function()
				require("conf.tsRainbow")
			end,
		})

		-- git
		use({
			"lewis6991/gitsigns.nvim",
			event = { "BufRead", "BufNewFile" },
			cmd = "Gitsigns",
			config = function()
				require("conf.gitsign")
			end,
		})

		-- scroll
		use({
			"declancm/cinnamon.nvim",
			event = { "BufRead", "BufNewFile" },
			config = function()
				require("conf.scroll")
			end,
		})

		-- autotag
		use({
			"windwp/nvim-ts-autotag",
			event = "InsertEnter",
			config = function()
				require("conf.autotag")
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
				require("conf.neotree")
			end,
		})

		-- telescope
		use({
			"nvim-telescope/telescope.nvim",
			tag = "0.1.0",
			cmd = "Telescope",
			-- requires = { "nvim-lua/plenary.nvim", "telescope-fzf-native.nvim" },
			requires = { "nvim-lua/plenary.nvim" },
			config = function()
				require("conf.telescope")
			end,
		})
		use({
			"benfowler/telescope-luasnip.nvim",
			module = "telescope._extensions.luasnip",
			config = function()
				require("telescope").load_extension("luasnip")
			end,
			after = "telescope.nvim",
		})

		-- comment
		use({
			"numToStr/Comment.nvim",
			keys = { "gc" },
			event = { "BufRead", "BufNewFile" },
			config = function()
				-- require("conf.comment")
				require("Comment").setup()
			end,
		})

		-- completion
		use({ "rafamadriz/friendly-snippets", event = "InsertEnter" })

		use({
			"hrsh7th/nvim-cmp",
			after = "friendly-snippets",
			config = function()
				require("conf.cmp")
			end,
		})

		-- snippet
		use({
			"L3MON4D3/LuaSnip",
			wants = "friendly-snippets",
			after = "nvim-cmp",
			config = function()
				require("conf.luasnip")
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
				require("conf.notify")
			end,
		})

		--WARN: custom border
	end,
	config = {
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
	},
})
