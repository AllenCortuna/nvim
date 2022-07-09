

--ULTISNIPPETS
-- Set ultisnips triggers
vim.g['UltiSnipsExpandTrigger'] = '<tab>'
vim.g['UltiSnipsJumpForwardTrigger'] = '<tab>' 
-- vim.g['UltiSnipsJumpBackwardTrigger'] = '<c-z>'
-- vim.g['UltiSnipsExpandTrigger'] = '<tab>'
-- vim.g['UltiSnipsJumpForwardTrigger'] = '<c-b>'

----IDENTGUIDE
require('indent_blankline').setup {}



 
-- npairs.setup({ map_cr = true })
require('nvim-ts-autotag').setup({
  filetypes = { "html", "xml", "javascript", "javascriptreact", "jsx" },
})

require("nvim-autopairs").setup()
--scroll 
require('cinnamon').setup()

