   require("luasnip.loaders.from_vscode").lazy_load()
   require("luasnip.loaders.from_vscode").lazy_load { paths = vim.g.luasnippets_path or "" }

-- load snippets from path/of/your/nvim/config/my-cool-snippets
-- require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippet" } })
require'luasnip'.filetype_extend("javascript", {"javascriptreact", "html"})
