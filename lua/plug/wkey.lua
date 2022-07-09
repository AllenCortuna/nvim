
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

  ["<leader>"] = {"<cmd>w<cr>", "Save"},
  q = {"<cmd>q<cr>", "quit"},
  s = {"<cmd>mks!<cr>", "save session"},
  c = {"gcc", "toggle comment line"},
  z = {"<cmd>ZenMode<cr>", "ZenMode"},
  u = {"<cmd>UltiSnipsEdit<cr>", "Snippet"},
  a = {"<cmd>wall<cr>", "save all"}
  
}, { prefix = "<leader>" })



wk.register({
  w ={"<cmd>set wrap!<cr>", "toggle wrap"},
  n ={"<cmd>set number!<cr>", "toggle number"},
  o ={"<cmd>on<cr>", "window"},
},{prefix = "s"})
