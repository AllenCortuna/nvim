
vim.g['mapleader'] = "_"
vim.g['maplocalleader']= "@" 

local wk = require("which-key")
    -- b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
wk.register({
  p = {
    name = "packer", -- optional group name
    s = { "<cmd>PackerSync<cr>", "PackeSync" },
    i = { "<cmd>PackerInstall<cr>", "PackerInstall" },
    u = { "<cmd>PackerUpdate<cr>", "PackerUpdate"},
    c = { "<cmd>PackerClean<cr>", "PackerClean" }
  },

  f = {
    name = "Files",
    f = {"<cmd>Telescope find_files<cr>", "Find files"},
    b = {"<cmd>Telescope buffers<cr>", "Find buffers"},
    h = {"<cmd>Telescope help_tags<cr>", "Help tags"},
    b = {"<cmd>Telescope buffers<cr>", "Find buffers"},
    r = {"<cmd>Telescope oldfiles<cr>", "Recent files"},
  },

  s = {
    name= "Search",
    w = {"<cmd>Telescope live_grep<cr>", "Search word"},
    s = {"<cmd>Telescope grep_string<cr>", "Search word cursor"},
    r = {"<cmd>Telescope registers<cr>", "Registers"},
    k = {"<cmd>Telescope keymaps<cr>", "Search keymap"},
  },

  g = {
    name = "Git",
    d = {"<cmd>Gitsigns diffthis<cr>", "Git diff"},
    n = {"<cmd>Gitsigns toggle_numhl<cr>", "Number highlight"},
    
  },

  ["<leader>"] = {"<cmd>w<cr>", "Save"},
  q = {"<cmd>q<cr>", "quit"},
  u = {"<cmd>UltiSnipsEdit<cr>", "Snippet"},
  a = {"<cmd>wall<cr>", "save all"},
  h = {"<cmd>noh<cr>", "Highlight"},
  
}, { prefix = "<leader>" })



wk.register({
  w ={"<cmd>set wrap!<cr>", "toggle wrap"},
  n ={"<cmd>set number!<cr>", "toggle number"},
  o ={"<cmd>on<cr>", "window"},
  z = {"<cmd>ZenMode<cr>", "ZenMode"},
},{prefix = "s"})
