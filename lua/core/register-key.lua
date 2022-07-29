vim.g["mapleader"] = " "

local wk = require("which-key")
-- b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
wk.register({

	["<leader>"] = { "<cmd>w!<cr>", "  Save" },
	-- t = { "<cmd>Telescope find_files<cr>", "  Find files" },
	a = { "<cmd>Neotree toggle <cr>", "  Neotree" },
	r = { ":%s///gc<left><left><left>", "  Rename" },
	q = { "<cmd>q<cr>", "  Quit" },
	h = { "<cmd>noh<cr>", "  Highlight" },
	n = { "<cmd>Notifications<cr>", "  Notify" },
	["/"] = {
		function()
			require("Comment.api").toggle_current_linewise()
		end,
		"  Comment",
	},

	b = { name = "  Buffers" },
	-- PACKER
	p = {
		name = "  Packer", -- optional group name
		s = { "<cmd>PackerSync<cr>", "  PackeSync" },
		i = { "<cmd>PackerInstall<cr>", "  PackerInstall" },
		u = { "<cmd>PackerUpdate<cr>", "  PackerUpdate" },
		c = { "<cmd>PackerClean<cr>", "  PackerClean" },
		S = { "<cmd>PackerStatus<cr>", "  PackerStatus" },
	},

	-- FILES
	f = {
		name = "  Files",
		f = { "<cmd>Telescope find_files<cr>", "  Find files" },
		b = { "<cmd>Telescope buffers<cr>", "  Find buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "  Help tags" },
		r = { "<cmd>Telescope oldfiles<cr>", "  Recent files" },
		t = { "<cmd>TODOTelescope<cr>", "  TODOTelescope" },
	},

	-- SEARCH
	s = {
		name = "  Search",
		w = { "<cmd>Telescope live_grep<cr>", "  Word" },
		s = { "<cmd>Telescope grep_string<cr>", "  Word cursor" },
		r = { "<cmd>Telescope registers<cr>", "  Registers" },
		k = { "<cmd>WhichKey<cr>", "  Keymap" },
		c = { "<cmd>Telescope colorscheme<cr>", "  Colorscheme" },
    l = {"<cmd> Telescope luasnip <cr>" , "  Snippet"},
    t = {"<cmd>TODOQuickfixList<cr>", "  TODOQuickfixList"}
	},

	-- COC
	-- c = {
	--   name = "  Coc",
	--   a = {"<cmd>CocEnable <cr>", "  CocEnable"},
	--   o = {"<cmd>CocDisable <cr>", "  CocDisable"},
	-- },

	-- SESSIONMANAGER
	m = {
		name = "  Session",
		l = { "<cmd>SessionManager load_session<cr>", "  Load session" },
		r = { "<cmd>SessionManager load_last_session<cr>", "  Recent session" },
		c = { "<cmd>SessionManager load_current_dir_session<cr>", "  Directory session" },
		k = { "<cmd>SessionManager save_current_session<cr>", "  Save" },
		d = { "<cmd>SessionManager delete_session<cr>", "  Delete session" },
	},

	g = {
		name = "  Git",
		d = { "<cmd>Gitsigns diffthis<cr>", "  Git diff" },
		n = { "<cmd>Gitsigns toggle_numhl<cr>", "  Number highlight" },
	},

	l = {
		name = "  Lsp",
		i = { "<cmd>LspInfo<cr>", "  LspInfo" },
		I = { "<cmd>LspInstallInfo<cr>", "  LspInstallInfo" },
	},
}, { prefix = "<leader>" })

wk.register({
	w = { "<cmd>set wrap!<cr>", "  Wrap" },
	n = { "<cmd>set number!<cr>", "  Number" },
	o = { "<cmd>on<cr>", "  Window" },
	z = { "<cmd>ZenMode<cr>", "  ZenMode" },
	-- t = {"<cmd>TwilightEnable<cr>", "  TwilightEnable"}
}, { prefix = "s" })

wk.register({

	l = {
		function()
			require("stylua-nvim").format_file()
		end,
		"  Format Lua",
	},
	j = { "<cmd>Prettier <cr>", "  Format Js/Css/Html" },
}, { prefix = 'f'})
