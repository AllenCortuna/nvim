local g = vim.g
local opt = vim.opt

opt.timeoutlen = 400
opt.tabstop = 2 -- Set the behavior of tab
opt.expandtab = true --tab insert space
opt.compatible = false
opt.cmdheight = 1
opt.updatetime = 200
opt.encoding = "UTF-8"
opt.number = true
opt.cursorline = true
opt.backup = no
opt.showmode = false
opt.scrolloff = 0 --Do not let cursor scroll below or above N number of lines when scrolling.

opt.undodir = "/data/data/com.termux/files/home/backup"
opt.undofile = true
opt.undoreload = 10000

opt.wrap = true

opt.ignorecase = true -- set ignorecase
opt.smartcase = true --Ignore capital letters during search.

opt.showcmd = false --Show partial command you type in the last line of the screen.

opt.showmatch = true --show match in search

opt.hlsearch = true --Use highlighting when doing a search.

opt.history = 100 --Set the commands to save in history default number is 20.

opt.wildmenu = true --Enable auto completion menu after pressing TAB.

opt.relativenumber = true
-- set.splitright = false
opt.sidescrolloff = 20 --Number of columns to keep at the sides of the cursor

--Wildmenu will ignore files with these extensions.
opt.wildignore = "*/.docx/*, */.jpg/*, */.png/*,*/.gif/*, */.pdf/*, */.pyc/*, */.exe/*, */.flv/*, */.img/*,*/.xlsx/*"

opt.hidden = true

opt.background = "dark"
opt.termguicolors = true

-- opt.signcolumn = "number"
opt.signcolumn = "yes"
opt.pumheight = 14 -- Height of the pop up menu
opt.clipboard = "unnamedplus" --Connection to the system clipboard
opt.preserveindent = true -- Preserve indent structure as much as possible
opt.lazyredraw = true -- lazily redraw screen
opt.laststatus = 2 -- globalstatus
opt.completeopt = { "menuone", "noselect" } -- Options for insert mode completion

-- highlight Cursor guifg= blue guibg=blue
-- highlight iCursor guifg=blue guibg=grey
-- set guicursor=n-v-c:block-Cursor
-- set guicursor+=i:block-iCursor
-- set guicursor+=n-v-c:blinkon0
-- set guicursor+=i:blinkwait10

g.did_load_filetypes = 0
g.do_filetype_lua = 1

opt.title = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true

opt.fillchars = { eob = " " }

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false
opt.whichwrap:append("<>[]hl")

-- disable some builtin vim plugins
local default_plugins = {
	"2html_plugin",
	"getscript",
	"getscriptPlugin",
	"gzip",
	"logipat",
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"matchit",
	"tar",
	"tarPlugin",
	"rrhelper",
	"spellfile_plugin",
	"vimball",
	"vimballPlugin",
	"zip",
	"zipPlugin",
	"tutor",
	"rplugin",
	"syntax",
	"synmenu",
	"optwin",
	"compiler",
	"bugreport",
	"ftplugin",
}

for _, plugin in pairs(default_plugins) do
	g["loaded_" .. plugin] = 1
end

local default_providers = {
	"node",
	"python",
	"perl",
	"ruby",
}

for _, provider in ipairs(default_providers) do
	vim.g["loaded_" .. provider .. "_provider"] = 0
end
