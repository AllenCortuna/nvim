vim.cmd [[packadd packer.nvim]]
 
local n = event
local js = {"typescript","javascript"}
local et = "VimEnter"
local buf = "BufReadPost"
 
return require("packer").startup(function()
  use "wbthomason/packer.nvim"
  use "lewis6991/impatient.nvim"

  --key
  use {"folke/which-key.nvim", 
    config = function() require "plug.wkey" end
  }

-- : syntax
  use { "hail2u/vim-css3-syntax", ft={"css"}}
  use { "leafgarland/typescript-vim", ft={"javascript"}}
  use { "ianks/vim-tsx",ft={"javascript"}}
  use { "mxw/vim-jsx" ,ft={"javascript"}}
  use { "pangloss/vim-javascript" ,ft={"javascript"}}

  -- use { "Shatur/neovim-session-manager",}
  use { "junegunn/fzf" , event = "VimEnter"}
  use { "junegunn/fzf.vim" ,event = "VimEnter"}

   
-- identline
  use { "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPost",
    config = function() require('indent_blankline').setup{} end 
  }

-- syntax high
  use { "nvim-treesitter/nvim-treesitter",
     run = ":TSUpdate",
     event = {"BufRead", "BufNewFile" },
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
    event="VimEnter",
    config = function() require "plug.dev-icons" end
  }

-- statusline
  use { "NTBBloodbath/galaxyline.nvim", 
    after ="nvim-web-devicons",
    config = function() require "plug.galaxyline"  end,
  }

-- bufferline
  use { "romgrk/barbar.nvim", 
    after ="nvim-web-devicons",
    config = function() require "plug.barbar" end,
    
  }
  -- rainbow bracket
  use { "p00f/nvim-ts-rainbow", 
    after = "nvim-treesitter",
    config = function() require "plug.tsRainbow"  end,
  }

  -- git
  use { "lewis6991/gitsigns.nvim",
    event = "BufEnter",
    config = function() require "plug.gitsign"  end,
  }

-- snippet  
  use { "honza/vim-snippets", event = "InsertEnter" }
  use { "SirVer/ultisnips", event = "InsertEnter"}

-- completion
  use { "neoclide/coc.nvim",branch = "release"}

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
  use { "nvim-telescope/telescope.nvim",tag = "0.1.0",
    cmd = "Telescope",
    requires = {"nvim-lua/plenary.nvim"},
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

  -- COMMENT
  use { "numToStr/Comment.nvim", 
    keys = {"gc"},
    config = function() require("Comment").setup()end 
  }

  -- zenmode
  use {
    "folke/zen-mode.nvim",
    event = {"BufRead", "BufNewFile"},
    config = function()require("zen-mode").setup {}end 
  }

  -- theme
  use { "adrian5/oceanic-next-vim", opt = true}
  use { "ghifarit53/tokyonight-vim", opt = true}
  use { "marko-cerovac/material.nvim"}

 
end)


