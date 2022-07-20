vim.cmd [[packadd packer.nvim]]
  -- use { "Shatur/neovim-session-manager",}
  
return require("packer").startup(function()
  use "wbthomason/packer.nvim"
  use "lewis6991/impatient.nvim"
  -- use "nathom/filetype.nvim"
  

  --key
  use {"folke/which-key.nvim", 
    opt = true,
    config = function() require "plug.which-key" end
  }

   
-- identline
  use { "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPost",
    config = function() require('indent_blankline').setup{} end 
  }

-- syntax high
  use { "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    event={"BufRead","BufNewFile"},
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
    config = function() require "plug.treesitter" end
   }

 -- icons
  use { "kyazdani42/nvim-web-devicons", 
    event={"BufRead","BufNewFile"},
    config = function() require "plug.dev-icons" end
  }

-- statusline
  use { "NTBBloodbath/galaxyline.nvim", 
    after ="nvim-web-devicons",
    config = function() require "plug.galaxyline"  end,
  }

-- bufferline
  use { "romgrk/barbar.nvim", 
    after = "nvim-web-devicons",
    config = function() require "plug.barbar" end,
    
  }
  -- rainbow bracket
  use { "p00f/nvim-ts-rainbow", 
    after = "nvim-treesitter",
    config = function() require "plug.tsRainbow"  end,
  }

  -- git
  use { "lewis6991/gitsigns.nvim",
    cmd = "Gitsigns",
    config = function() require "plug.gitsign"  end,
  }



-- scroll
  use { "declancm/cinnamon.nvim",
    event = {"BufRead", "BufNewFile"},
    config = function() require "plug.scroll" end,
  }

-- autotag
  use { "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function() require "plug.autotag" end,
  }

  -- autopairs
  use { "windwp/nvim-autopairs", 
    event = "InsertEnter",
    config = function() require("nvim-autopairs").setup() end,
  }

 -- telescope
 use {'nvim-telescope/telescope-fzf-native.nvim', 
   after = "telescope.nvim",
   run = 'make',
   config = function() require"plug.fzf" end
 }
    
  use { "nvim-telescope/telescope.nvim",tag = "0.1.0",
    cmd = "Telescope",
    requires = {"nvim-lua/plenary.nvim"},
    config = function() require"plug.telescope" end
  }

-- neotree
  use { "nvim-neo-tree/neo-tree.nvim",branch = "v2.x",
    cmd = "Neotree",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
      },
    config = function() require"plug.neotree" end,
    } 

  -- comment
  use { "numToStr/Comment.nvim", 
    keys = {"gc"},
    event = {"BufRead", "BufNewFile"},
    config = function() require("Comment").setup()end 
  }

  -- zenmode
  use {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = function()require("zen-mode").setup {}end 
  }


-- completion
   use {"rafamadriz/friendly-snippets",
      event = "InsertEnter",
   }

   use { "hrsh7th/nvim-cmp",
      after = "friendly-snippets",
      config = function()
         require "plug.cmp"
      end,
   }

-- snippet  
   use {"L3MON4D3/LuaSnip",
      wants = "friendly-snippets",
      after = "nvim-cmp",
      config = function()
         require"plug.luasnip"
      end
   }

   use {"saadparwaiz1/cmp_luasnip",
      after = "LuaSnip",
   }

   use {"hrsh7th/cmp-nvim-lua",
      after = "cmp_luasnip",
   }

   use {"hrsh7th/cmp-nvim-lsp",
      after = "cmp-nvim-lua",
   }

   use {"hrsh7th/cmp-buffer",
      after = "cmp-nvim-lsp",
   }

   use {"hrsh7th/cmp-path",
      after = "cmp-buffer",
   }

  -- theme
  use { "mhartington/oceanic-next", opt = true}
  use { "ghifarit53/tokyonight-vim" }
  use { "EdenEast/nightfox.nvim", opt = true }
  use { "marko-cerovac/material.nvim",
    -- opt = true,
    config = function() require "plug.material" end,
  }



end)


