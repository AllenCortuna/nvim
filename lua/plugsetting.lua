

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

require('indent-o-matic').setup {
    -- The values indicated here are the defaults

    -- Number of lines without indentation before giving up (use -1 for infinite)
    max_lines = 2048,

    -- Space indentations that should be detected
    standard_widths = { 2, 4, 8 },

    -- Skip multi-line comments and strings (more accurate detection but less performant)
    skip_multiline = true,
}
